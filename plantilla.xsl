<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
  <div class="header sombreado">
    <h1><a href="index.html" id="title_guide">Guide for HTML  XHTML</a></h1>
    <h3>A <b>responsive</b> website created by Team 2.</h3>
  </div>


  <div class="center">
    <!-- MENU -->
    <div class="menu sombreado">
      <ul>
        <li><a class="menulink" href="index.html">What is HTML?</a></li>
        <li><a class="menulink" href="differences.html">Differences between HTML  XHTML</a></li>
        <li><a class="menulink" href="xml-team2.xml">HTML tags</a></li>
        <li><a class="menulink" href="versions.html">HTML  XHTML versions</a></li>
        <li><a class="menulink" href="validations.html">HTML  XHTML validation</a></li>
      </ul>
    </div>
    <!-- CONTENT -->
    <div class="content">
      <h1>What is HTML?</h1>
      <h1>TAGS</h1>

      <br/>
      DOCUMENT HTML <br/>
     <xsl:for-each select="root/tags/tag">
       <xsl:if test="name='html'or name='head' or name='title'or name='body'or name='style'or name='script' ">
         <strong>Name of tag: </strong>
         <xsl:value-of select="name"/>
         <br/>
         <strong>  Definition of tag: </strong>
         <xsl:value-of select="definition"/>
         <br/>
         <xsl:apply-templates select="attributes/attribute"/>
         <xsl:apply-templates select="examples"/>
         <br/>
       </xsl:if>
     </xsl:for-each>
     <br/>

      LISTS:
       <xsl:for-each select="root/tags/tag">
         <xsl:if test="name='li' or name='ul' or name='ol' ">
           <br/><strong>Name of tag: </strong>
             <xsl:value-of select="name"/>
            <br/>
           <strong>  Definition of tag: </strong>
             <xsl:value-of select="definition"/>
             <br/>
           <xsl:apply-templates select="attributes/attribute"/>
           <xsl:apply-templates select="examples"/>
             </xsl:if>


       </xsl:for-each>
       <br/>
       TABLES:

       <xsl:for-each select="root/tags/tag">

       <xsl:if test=" name='dt' or name='dd' or name='dl' or name='table' or name='th' or name='td' or name='tr'">

        <div class="tables">

          <strong>Name of tag: </strong>
         <xsl:value-of select="name"/>
        <br/>
       <strong>  Definition of tag: </strong>
         <xsl:value-of select="definition"/>
         <br/>
       <xsl:apply-templates select="attributes/attribute"/>
       <xsl:apply-templates select="examples"/>
       <br/>
         </div>
         </xsl:if>
     </xsl:for-each>
     <br/>
     GENERICS:
     <xsl:for-each select="root/tags/tag">
       <xsl:if test=" name='br'or name='strong' or name='h1' or name='p'">
         <br/><strong>Name of tag: </strong>
           <xsl:value-of select="name"/>
          <br/>
         <strong>  Definition of tag: </strong>
           <xsl:value-of select="definition"/>
           <br/>
         <xsl:apply-templates select="attributes/attribute"/>
         <xsl:apply-templates select="examples"/>
           </xsl:if>
     </xsl:for-each>
     <br/>
     CONTAINERS: <xsl:for-each select="root/tags/tag">
       <xsl:if test="name='header' or name='footer'or name='div' or name='span' or name='nav'">
         <br/><strong>Name of tag: </strong>
           <xsl:value-of select="name"/>
          <br/>
         <strong>  Definition of tag: </strong>
           <xsl:value-of select="definition"/>
           <br/>
         <xsl:apply-templates select="attributes/attribute"/>
         <xsl:apply-templates select="examples"/>
           </xsl:if>
     </xsl:for-each>
     <br/>
     LINKS:
     <xsl:for-each select="root/tags/tag">
       <xsl:if test="name='a' or name='link'">
         <br/><strong>Name of tag: </strong>
           <xsl:value-of select="name"/>
          <br/>
         <strong>  Definition of tag: </strong>
           <xsl:value-of select="definition"/>
           <br/>
         <xsl:apply-templates select="attributes/attribute"/>
         <xsl:apply-templates select="examples"/>
           </xsl:if>
     </xsl:for-each>
     <br/>
     FORM:
     <xsl:for-each select="root/tags/tag">
       <xsl:if test="name='select' or name='option' or name='label' or name='form'or name='input' or name='button'or name='textarea'">
         <br/><strong>Name of tag: </strong>
           <xsl:value-of select="name"/>
          <br/>
         <strong>  Definition of tag: </strong>
           <xsl:value-of select="definition"/>
           <br/>
         <xsl:apply-templates select="attributes/attribute"/>
         <xsl:apply-templates select="examples"/>
           </xsl:if>
     </xsl:for-each>
     <br/>
     IMAGE:
     <xsl:for-each select="root/tags/tag">
       <xsl:if test="name='img'">
         <br/><strong>Name of tag: </strong>
           <xsl:value-of select="name"/>
          <br/>
         <strong>  Definition of tag: </strong>
           <xsl:value-of select="definition"/>
           <br/>
         <xsl:apply-templates select="attributes/attribute"/>
         <xsl:apply-templates select="examples"/>
           </xsl:if>
     </xsl:for-each>

    </div>
  </div>

  <div class="footer-content sombreado">

    <div class="footer-section about">
      <h2>Made with love at</h2>
      <a href="http://iesseveroochoa.edu.gva.es/" target="_blank"><img src="images/logoSevero.png" alt="Severo Ochoa" class="footer_image center_in_footer"/></a>
      <p id="validated">
        <a href="http://validator.w3.org/check?uri=referer"><img src="http://www.w3.org/Icons/valid-xhtml11" alt="Valid XHTML 1.1" height="31" width="88" class="center_in_footer" /></a>
        <a href="http://jigsaw.w3.org/css-validator/check/referer">
          <img style="border:0;width:88px;height:31px" src="http://jigsaw.w3.org/css-validator/images/vcss" alt="¡CSS Válido!" class="center_in_footer" />
        </a>
      </p>
    </div>

    <div class="footer-section links">
      <h2>Quick Links</h2>
      <ul>
        <li><a href="index.html">What is HTML</a></li>
        <li><a href="differences.html">HTML vs XHTML</a></li>
        <li><a href="xml-team2.xml">HTML tags</a></li>
        <li><a href="versions.html">HTML versions</a></li>
        <li><a href="validations.html">HTML validation</a></li>
      </ul>
    </div>

  </div>

  <div class="footer-bottom">

  </div>

</body>
</html>
  </xsl:template>

<!-- plantilla para atributos-->
  <xsl:template match="attribute">
      <strong>Name of attribute:</strong>
    <xsl:value-of select="attribute_name"/>
    <br/>
  <strong>Definition of atribute:</strong>
    <xsl:value-of select="attribute_definition"/>
    <br/>
  </xsl:template>
  <!-- plantilla para ejemplos-->
  <xsl:template match="examples">
  <strong>Examples:</strong>
  <xsl:value-of select="example"/>
  <br/>
  </xsl:template>
     </xsl:stylesheet>
