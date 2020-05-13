<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">

    <html
      version="-//W3C//DTD XHTML 1.1//EN"
      xmlns="http://www.w3.org/1999/xhtml"
      xml:lang="en"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.w3.org/1999/xhtml
                        http://www.w3.org/MarkUp/SCHEMA/xhtml11.xsd">
      <head>
        <title>HTML tags</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <link rel="stylesheet" type="text/css" href="css/search.css"/>
        <script type="text/javascript" src="js/jsfile.js"></script>

      </head>
      <body>
        <div class="header sombreado">
          <h1>
            <a href="index.html" id="title_guide">Guide for HTML &amp; XHTML</a>
          </h1>
          <h3>A <b>responsive</b> website created by Team 2.</h3>
        </div>

        <div class="center">
          <!-- MENU -->
          <div class="menu sombreado">
            <ul>
              <li>
                <a class="menulink" href="index.html">What is HTML?</a>
              </li>
              <li>
                <a class="menulink" href="differences.html">Differences between HTML &amp; XHTML</a>
              </li>
              <li>
                <a class="menulink" href="xml-team2.xml">HTML tags</a>
              </li>
              <li>
                <a class="menulink" href="versions.html">HTML &amp; XHTML versions</a>
              </li>
              <li>
                <a class="menulink" href="validations.html">HTML &amp; XHTML validation</a>
              </li>
            </ul>
          </div>


          <!-- CONTENT -->
          <div class="content">
            
            <h1 id="html-tags">HTML tags</h1>

            <p class="search-p">Search an HTML tag by name...</p>

            <div class="search-engine">
              <input type="text" name="user-search" id="user-search" placeholder="Type to search"/>
              <br/>
              <input type="button" name="search" value="Search tagname" id="search-tagname" onclick="search();"/>
              <input type="button" name="showall" value="Show all" onclick="showAll();"/>
            </div>


            <div class="tags-menu mostra">
              <p class="search-p">... Or see all tags of a particular type: </p>
              <ul>
                <li><a href="#document-tags">Document tags</a></li>
                <li><a href="#head-tags">Head tags</a></li>
                <li><a href="#list-tags">List tags</a></li>
                <li><a href="#text-tags">Text tags</a></li>
                <li><a href="#table-tags">Table tags</a></li>
                <li><a href="#link-tags">Link tags</a></li>
                <li><a href="#form-tags">Form tags</a></li>
                <li><a href="#container-tags">Container tags</a></li>
              </ul>
            </div>



            <p id="not-found-message" class="oculta">No tags were found with that name... Try another search!</p>



            <div class="all-tags">

            <h3 id="document-tags">DOCUMENT TAGS<span class="back-up"><a href="#html-tags"><xsl:text disable-output-escaping="yes">&#160;&#160;&#160;</xsl:text>[Back up]</a></span></h3>

            <xsl:for-each select="root/tags/type[@name='document']/tag">

              <table class="xsl-table mostra">

                <tr>
                  <th scope="col" colspan="2"><strong>&lt;<xsl:value-of select="name"/>&gt;</strong></th>
                </tr>
                <tr>
                  <td colspan="2"><strong>Definition: </strong><xsl:value-of select="definition"/></td>
                </tr>

                <xsl:for-each select="attributes/attribute">
                  <tr>
                    <td><strong>Attribute: </strong><xsl:value-of select="attribute_name"/></td>
                    <td><xsl:value-of select="attribute_definition"/></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/codeexamples">
                  <tr>
                    <td><strong>Example</strong></td>
                    <td><pre><xsl:value-of select="example"/></pre></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/imageexamples">
                  <tr>
                    <td><strong>Example with image</strong></td>
                    <td class="image_td">
                      <div>
                        <img>
                            <xsl:attribute name="src">
                              <xsl:value-of select="image"/>
                            </xsl:attribute>
                        </img>
                      </div>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>
            </xsl:for-each>



            <h3 id="head-tags">HEAD TAGS<span class="back-up"><a href="#html-tags"><xsl:text disable-output-escaping="yes">&#160;&#160;&#160;</xsl:text>[Back up]</a></span></h3>

            <xsl:for-each select="root/tags/type[@name='head']/tag">

              <table class="xsl-table mostra">

                <tr>
                  <th scope="col" colspan="2"><strong>&lt;<xsl:value-of select="name"/>&gt;</strong></th>
                </tr>
                <tr>
                  <td colspan="2"><strong>Definition: </strong><xsl:value-of select="definition"/></td>
                </tr>

                <xsl:for-each select="attributes/attribute">
                  <tr>
                    <td><strong>Attribute: </strong><xsl:value-of select="attribute_name"/></td>
                    <td><xsl:value-of select="attribute_definition"/></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/codeexamples">
                  <tr>
                    <td><strong>Example</strong></td>
                    <td><pre><xsl:value-of select="example"/></pre></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/imageexamples">
                  <tr>
                    <td><strong>Example with image</strong></td>
                    <td class="image_td">
                      <div>
                        <img>
                            <xsl:attribute name="src">
                              <xsl:value-of select="image"/>
                            </xsl:attribute>
                        </img>
                      </div>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>
            </xsl:for-each>



            <h3 id="list-tags">LIST TAGS<span class="back-up"><a href="#html-tags"><xsl:text disable-output-escaping="yes">&#160;&#160;&#160;</xsl:text>[Back up]</a></span></h3>

            <xsl:for-each select="root/tags/type[@name='list']/tag">

              <table class="xsl-table mostra">

                <tr>
                  <th scope="col" colspan="2"><strong>&lt;<xsl:value-of select="name"/>&gt;</strong></th>
                </tr>
                <tr>
                  <td colspan="2"><strong>Definition: </strong><xsl:value-of select="definition"/></td>
                </tr>

                <xsl:for-each select="attributes/attribute">
                  <tr>
                    <td><strong>Attribute: </strong><xsl:value-of select="attribute_name"/></td>
                    <td><xsl:value-of select="attribute_definition"/></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/codeexamples">
                  <tr>
                    <td><strong>Example</strong></td>
                    <td><pre><xsl:value-of select="example"/></pre></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/imageexamples">
                  <tr>
                    <td><strong>Example with image</strong></td>
                    <td class="image_td">
                      <div>
                        <img>
                            <xsl:attribute name="src">
                              <xsl:value-of select="image"/>
                            </xsl:attribute>
                        </img>
                      </div>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>
            </xsl:for-each>




            <h3 id="text-tags">TEXT TAGS<span class="back-up"><a href="#html-tags"><xsl:text disable-output-escaping="yes">&#160;&#160;&#160;</xsl:text>[Back up]</a></span></h3>

            <xsl:for-each select="root/tags/type[@name='text']/tag">

              <table class="xsl-table mostra">

                <tr>
                  <th scope="col" colspan="2"><strong>&lt;<xsl:value-of select="name"/>&gt;</strong></th>
                </tr>
                <tr>
                  <td colspan="2"><strong>Definition: </strong><xsl:value-of select="definition"/></td>
                </tr>

                <xsl:for-each select="attributes/attribute">
                  <tr>
                    <td><strong>Attribute: </strong><xsl:value-of select="attribute_name"/></td>
                    <td><xsl:value-of select="attribute_definition"/></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/codeexamples">
                  <tr>
                    <td><strong>Example</strong></td>
                    <td><pre><xsl:value-of select="example"/></pre></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/imageexamples">
                  <tr>
                    <td><strong>Example with image</strong></td>
                    <td class="image_td">
                      <div>
                        <img>
                            <xsl:attribute name="src">
                              <xsl:value-of select="image"/>
                            </xsl:attribute>
                        </img>
                      </div>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>
            </xsl:for-each>



            <h3 id="table-tags">TABLE TAGS<span class="back-up"><a href="#html-tags"><xsl:text disable-output-escaping="yes">&#160;&#160;&#160;</xsl:text>[Back up]</a></span></h3>

            <xsl:for-each select="root/tags/type[@name='table']/tag">

              <table class="xsl-table mostra">

                <tr>
                  <th scope="col" colspan="2"><strong>&lt;<xsl:value-of select="name"/>&gt;</strong></th>
                </tr>
                <tr>
                  <td colspan="2"><strong>Definition: </strong><xsl:value-of select="definition"/></td>
                </tr>

                <xsl:for-each select="attributes/attribute">
                  <tr>
                    <td><strong>Attribute: </strong><xsl:value-of select="attribute_name"/></td>
                    <td><xsl:value-of select="attribute_definition"/></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/codeexamples">
                  <tr>
                    <td><strong>Example</strong></td>
                    <td><pre><xsl:value-of select="example"/></pre></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/imageexamples">
                  <tr>
                    <td><strong>Example with image</strong></td>
                    <td class="image_td">
                      <div>
                        <img>
                            <xsl:attribute name="src">
                              <xsl:value-of select="image"/>
                            </xsl:attribute>
                        </img>
                      </div>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>
            </xsl:for-each>





            <h3 id="link-tags">LINK TAGS<span class="back-up"><a href="#html-tags"><xsl:text disable-output-escaping="yes">&#160;&#160;&#160;</xsl:text>[Back up]</a></span></h3>

            <xsl:for-each select="root/tags/type[@name='link']/tag">

              <table class="xsl-table mostra">

                <tr>
                  <th scope="col" colspan="2"><strong>&lt;<xsl:value-of select="name"/>&gt;</strong></th>
                </tr>
                <tr>
                  <td colspan="2"><strong>Definition: </strong><xsl:value-of select="definition"/></td>
                </tr>

                <xsl:for-each select="attributes/attribute">
                  <tr>
                    <td><strong>Attribute: </strong><xsl:value-of select="attribute_name"/></td>
                    <td><xsl:value-of select="attribute_definition"/></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/codeexamples">
                  <tr>
                    <td><strong>Example</strong></td>
                    <td><pre><xsl:value-of select="example"/></pre></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/imageexamples">
                  <tr>
                    <td><strong>Example with image</strong></td>
                    <td class="image_td">
                      <div>
                        <img>
                            <xsl:attribute name="src">
                              <xsl:value-of select="image"/>
                            </xsl:attribute>
                        </img>
                      </div>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>
            </xsl:for-each>




            <h3 id="form-tags">FORM TAGS<span class="back-up"><a href="#html-tags"><xsl:text disable-output-escaping="yes">&#160;&#160;&#160;</xsl:text>[Back up]</a></span></h3>

            <xsl:for-each select="root/tags/type[@name='form']/tag">

              <table class="xsl-table mostra">

                <tr>
                  <th scope="col" colspan="2"><strong>&lt;<xsl:value-of select="name"/>&gt;</strong></th>
                </tr>
                <tr>
                  <td colspan="2"><strong>Definition: </strong><xsl:value-of select="definition"/></td>
                </tr>

                <xsl:for-each select="attributes/attribute">
                  <tr>
                    <td><strong>Attribute: </strong><xsl:value-of select="attribute_name"/></td>
                    <td><xsl:value-of select="attribute_definition"/></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/codeexamples">
                  <tr>
                    <td><strong>Example</strong></td>
                    <td><pre><xsl:value-of select="example"/></pre></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/imageexamples">
                  <tr>
                    <td><strong>Example with image</strong></td>
                    <td class="image_td">
                      <div>
                        <img>
                            <xsl:attribute name="src">
                              <xsl:value-of select="image"/>
                            </xsl:attribute>
                        </img>
                      </div>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>
            </xsl:for-each>





            <h3 id="container-tags">CONTAINER TAGS<span class="back-up"><a href="#html-tags"><xsl:text disable-output-escaping="yes">&#160;&#160;&#160;</xsl:text>[Back up]</a></span></h3>

            <xsl:for-each select="root/tags/type[@name='container']/tag">

              <table class="xsl-table mostra">

                <tr>
                  <th scope="col" colspan="2"><strong>&lt;<xsl:value-of select="name"/>&gt;</strong></th>
                </tr>
                <tr>
                  <td colspan="2"><strong>Definition: </strong><xsl:value-of select="definition"/></td>
                </tr>

                <xsl:for-each select="attributes/attribute">
                  <tr>
                    <td><strong>Attribute: </strong><xsl:value-of select="attribute_name"/></td>
                    <td><xsl:value-of select="attribute_definition"/></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/codeexamples">
                  <tr>
                    <td><strong>Example</strong></td>
                    <td><pre><xsl:value-of select="example"/></pre></td>
                  </tr>
                </xsl:for-each>

                <xsl:for-each select="examples/imageexamples">
                  <tr>
                    <td><strong>Example with image</strong></td>
                    <td class="image_td">
                      <div>
                        <img>
                            <xsl:attribute name="src">
                              <xsl:value-of select="image"/>
                            </xsl:attribute>
                        </img>
                      </div>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>

            </xsl:for-each>


          </div>    <!-- close all-tags div -->

          </div>      <!-- close CONTENT -->
        </div>

        <div class="footer-content sombreado">

          <div class="footer-section about">
            <h2>Made with &#10084;&#65039; at</h2>
            <p>
              <a href="http://iesseveroochoa.edu.gva.es/" target="_blank"><img src="images/logoSevero.png" alt="Severo Ochoa" class="footer_image center_in_footer"/></a>
            </p>
            <p>
              <a href="https://twinspace.etwinning.net/about" target="_blank"><img src="images/etwinning.png" alt="eTwinning" class="footer_image center_in_footer"/></a>
            </p>

            <p>
              This work is licensed under a
              <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank" id="creative-commons">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>:
              <br/>
              <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">
                <img alt="Creative Commons License" src="images/creative-commons.png" class="center_in_footer"/>
              </a>
            </p>

            <p id="validated">
              <a href="http://validator.w3.org/check?uri=referer" target="_blank"><img src="http://www.w3.org/Icons/valid-xhtml11" alt="Valid XHTML 1.1" height="31" width="88" class="center_in_footer"/></a>
              <a href="http://jigsaw.w3.org/css-validator/check/referer" target="_blank">
                <img style="border:0;width:88px;height:31px" src="http://jigsaw.w3.org/css-validator/images/vcss" alt="¡CSS Válido!" class="center_in_footer"/>
              </a>
            </p>
          </div>

          <div class="footer-section links">
            <h2>Quick Links</h2>
            <ul>
              <li>
                <a href="index.html">What is HTML</a>
              </li>
              <li>
                <a href="differences.html">HTML vs XHTML</a>
              </li>
              <li>
                <a href="xml-team2.xml">HTML tags</a>
              </li>
              <li>
                <a href="versions.html">HTML versions</a>
              </li>
              <li>
                <a href="validations.html">HTML validation</a>
              </li>
            </ul>
          </div>

          <div class="footer-section contact-form">
            <h2>Contact us</h2>
            <p id="form-parag">Help us improve. Feel free to send doubts or suggestions.</p>
            <br/>
            <form action="index.html" method="post">
              <input type="email" name="email" class="text-input contact-input" placeholder="Your email address..."/>
              <textarea rows="6" name="message" class="text-input contact-input" placeholder="Your message..."></textarea>
              <button type="submit" class="btn btn-big contact-btn">SEND</button>
            </form>
          </div>

        </div>

        <div class="footer-bottom">
          <p>htmlgenius.com | Designed by Germán Asencio, Jonatan López, Pedro Guzmán &amp; Pablo Pagán.</p>
        </div>

        <script>
          /* Call search function by just hitting press button when inside text input. */
          /* It needs to be placed here so that user-search is loaded before this is called. */
          let input = document.getElementById('user-search');

          input.addEventListener('keydown', (e) => {

            if(e.keyCode === 13){
              search();
            }
          });
        </script>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>