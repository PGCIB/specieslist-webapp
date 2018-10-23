%{--
  - Copyright (C) 2012 Atlas of Living Australia
  - All Rights Reserved.
  -
  - The contents of this file are subject to the Mozilla Public
  - License Version 1.1 (the "License"); you may not use this file
  - except in compliance with the License. You may obtain a copy of
  - the License at http://www.mozilla.org/MPL/
  -
  - Software distributed under the License is distributed on an "AS
  - IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
  - implied. See the License for the specific language governing
  - rights and limitations under the License.
  --}%
<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="breadcrumb" content="Species lists"/>
    <title>Species lists |${grailsApplication.config.skin.orgNameLong}</title>
</head>

<body class="">
<div id="content" class="row">
    <div class="col-md-12">
        <header id="page-header">
            <div class="row">
                <hgroup class="col-md-8">
                    <h2 class="subject-title"><g:message code="public.specieslists.header01" default="Species Lists"/></h2>
                </hgroup>

                <div class="col-md-4">
                    <span class="pull-right">
                        <a class="btn btn-ala" title="Add Species List"
                           href="${request.contextPath}/speciesList/upload"><g:message code="public.specieslists.btn01" default="Upload a list"/></a>
                        <a class="btn btn-ala" title="My Lists" href="${request.contextPath}/speciesList/list"><g:message code="public.specieslists.btn02" default="My lists"/></a>
                    </span>
                </div>
            </div><!--.row-->

        </header>
        <div class="inner row" id="public-specieslist">
            <div class="col-md-12">
                <g:if test="${flash.message}">
                    <div class="message alert alert-info">
                        <button type="button" class="close" onclick="$(this).parent().hide()">×</button>
                        <b>Alert:</b> ${flash.message}
                    </div>
                </g:if>
                <p>
                    <g:message code="public.specieslists.p01" default="This tool allows you to upload a list of species and work with that list within the Atlas. Click Upload a list to upload your own list of taxa."/>
                </p>
                <g:if test="${lists && total > 0}">
                    <p>
                        <g:message code="public.specieslists.p02" default="Below is a listing of user provided species lists. You can use these lists to work with parts of the Atlas."/>
                    </p>
                    <g:render template="/speciesList"/>
                </g:if>
                <g:elseif test="${params.q}">
                    <form class="listSearchForm">
                        <p><g:message code="public.specieslists.p02" default="No species lists found "/> for: <b>${params.q}</b></p>
                        <button class="btn btn-primary" type="submit"><g:message code="public.specieslists.b03" default="Clear search"/></button>
                    </form>
                </g:elseif>
                <g:else>
                    <p><g:message code="public.specieslists.p04" default="There are no species lists available"/></p>
                </g:else>
            </div>
        </div>
    </div>
</div> <!-- content div -->
</body>
</html>
