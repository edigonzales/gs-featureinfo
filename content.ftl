<ul>
<#list features as feature>
  <li><b>Fuuuuubar: ${type.name}</b> (id: <em>${feature.fid}</em>):
  <li>${request.LAYERS}</li>
  <li></li>

<#assign bbox=request.BBOX[12..]?remove_ending("]")?split(",")>
<#assign width=bbox[0]?split(":")>
<#assign minX=width[0]>
<#assign maxX=width[1]>
<#assign height=bbox[1]?split(":")>
<#assign minY=height[0]>
<#assign maxY=height[1]>



  <li>${minX}</li>
  <li>${maxX}</li>
  <li>${minY}</li>
  <li>${maxY}</li>


  <ul>
  <#list feature.attributes as attribute>
    <#if !attribute.isGeometry>
      <li>${attribute.name}: ${attribute.value}</li>
    </#if>
  </#list>
  </ul>
  </li>
</#list>
</ul>
