{jmessage_bootstrap}
  <h1>{@admin~admin.configuration.h1@}</h1>

  {ifacl2 'lizmap.admin.services.view'}
  <!--Services-->
  <div>
    <h2>{@admin~admin.configuration.services.label@}</h2>
    <dl>
      <dt>{@admin~admin.configuration.services.wmsServerURL.label@}</dt><dd>{$lizmapConfig->wmsServerURL}</dd>
      <dt>{@admin~admin.configuration.services.cacheServerURL.label@}</dt><dd>{$lizmapConfig->cacheServerURL}</dd>
      <dt>{@admin~admin.configuration.services.defaultRepository.label@}</dt><dd>{$lizmapConfig->defaultRepository}</dd>
    </dl>
    
    <!-- Modify -->
    {ifacl2 'lizmap.admin.services.update'}
    <div class="form-actions">
    <a class="btn" href="{jurl 'admin~config:modifyServices'}">
      {@admin~admin.configuration.button.modify.service.label@}
    </a>
    </div>
    {/ifacl2}
  </div>
  {/ifacl2}

  {ifacl2 'lizmap.admin.repositories.view'}
  <!--Repositories-->
  <div>
  <h2>{@admin~admin.configuration.repository.label@}</h2>
  {foreach $lizmapConfig->repositoryList as $repo}
   
    <legend>{$repo}</legend>
    
    {if isset($lizmapConfig->lizmapConfigData['repository:'.$repo]) }
      {assign $section = 'repository:'.$repo}
      {assign $item = $lizmapConfig->lizmapConfigData[$section]}
      <dl class="dl-horizontal">
      {foreach $item as $key=>$val}
        <dt>{$key}</dt><dd>{$val}</dd>
      {/foreach}
      </dl>

<ul><b>{@admin~admin.form.admin_section.groups.label@}</b>
{foreach $data[$repo] as $k}
  <li><b>{$labels[$k->id_aclsbj]}</b> : {$k->group_names}
{/foreach}
</ul>

      <div class="form-actions">
        <!-- View repository page -->
        {ifacl2 'lizmap.repositories.view', $repo}
        <a class="btn" href="{jurl 'view~default:index', array('repository'=>$repo)}" target="_blank">{@admin~admin.configuration.button.view.repository.label@}</a>
        {/ifacl2}
        <!-- Modify -->
        {ifacl2 'lizmap.admin.repositories.update'}
        <a class="btn" href="{jurl 'admin~config:modifySection', array('repository'=>$repo)}">{@admin~admin.configuration.button.modify.repository.label@}</a>
        {/ifacl2}
        <!-- Remove -->
        {ifacl2 'lizmap.admin.repositories.delete'}
        <a class="btn" href="{jurl 'admin~config:removeSection', array('repository'=>$repo)}" onclick="return confirm('{@admin~admin.configuration.button.remove.repository.confirm.label@}')">{@admin~admin.configuration.button.remove.repository.label@}</a>
        {/ifacl2}
      </div>
      
    {/if}
  {/foreach}    
  </div>
  {/ifacl2}

<!--Add a repository-->
{ifacl2 'lizmap.admin.repositories.create'}
<a class="btn" href="{jurl 'admin~config:createSection'}">{@admin~admin.configuration.button.add.repository.label@}</a>
{/ifacl2}
