/*
 Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.md or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("paste",function(e){function t(t){var a=new CKEDITOR.dom.document(t.document),o=a.getBody(),r=a.getById("cke_actscrpt");r&&r.remove(),o.setAttribute("contenteditable",!0),o.on(i.mainPasteEvent,function(e){e=i.initPasteDataTransfer(e),n?e!=n&&(n=i.initPasteDataTransfer()):n=e}),CKEDITOR.env.ie&&8>CKEDITOR.env.version&&a.getWindow().on("blur",function(){a.$.selection.empty()}),a.on("keydown",function(e){e=e.data;var t;switch(e.getKeystroke()){case 27:this.hide(),t=1;break;case 9:case CKEDITOR.SHIFT+9:this.changeFocus(1),t=1}t&&e.preventDefault()},this),e.fire("ariaWidget",new CKEDITOR.dom.element(t.frameElement)),a.getWindow().getFrame().removeCustomData("pendingFocus")&&o.focus()}var n,a=e.lang.clipboard,i=CKEDITOR.plugins.clipboard;return e.on("pasteDialogCommit",function(t){t.data&&e.fire("paste",{type:"auto",dataValue:t.data.dataValue,method:"paste",dataTransfer:t.data.dataTransfer||i.initPasteDataTransfer()})},null,null,1e3),{title:a.title,minWidth:CKEDITOR.env.ie&&CKEDITOR.env.quirks?370:350,minHeight:CKEDITOR.env.quirks?250:245,onShow:function(){this.parts.dialog.$.offsetHeight,this.setupContent(),this.parts.title.setHtml(this.customTitle||a.title),this.customTitle=null},onLoad:function(){(CKEDITOR.env.ie7Compat||CKEDITOR.env.ie6Compat)&&"rtl"==e.lang.dir&&this.parts.contents.setStyle("overflow","hidden")},onOk:function(){this.commitContent()},contents:[{id:"general",label:e.lang.common.generalTab,elements:[{type:"html",id:"securityMsg",html:'<div style="white-space:normal;width:340px">'+a.securityMsg+"</div>"},{type:"html",id:"pasteMsg",html:'<div style="white-space:normal;width:340px">'+a.pasteMsg+"</div>"},{type:"html",id:"editing_area",style:"width:100%;height:100%",html:"",focus:function(){var e=this.getInputElement(),t=e.getFrameDocument().getBody();!t||t.isReadOnly()?e.setCustomData("pendingFocus",1):t.focus()},setup:function(){var i=this.getDialog(),o='<html dir="'+e.config.contentsLangDirection+'" lang="'+(e.config.contentsLanguage||e.langCode)+'"><head><style>body{margin:3px;height:95%;word-break:break-all;}</style></head><body><script id="cke_actscrpt" type="text/javascript">window.parent.CKEDITOR.tools.callFunction('+CKEDITOR.tools.addFunction(t,i)+",this);</script></body></html>",r=CKEDITOR.env.air?"javascript:void(0)":CKEDITOR.env.ie&&!CKEDITOR.env.edge?"javascript:void((function(){"+encodeURIComponent("document.open();("+CKEDITOR.tools.fixDomain+")();document.close();")+'})())"':"",l=CKEDITOR.dom.element.createFromHtml('<iframe class="cke_pasteframe" frameborder="0"  allowTransparency="true" src="'+r+'" aria-label="'+a.pasteArea+'" aria-describedby="'+i.getContentElement("general","pasteMsg").domId+'"></iframe>');if(n=null,l.on("load",function(n){n.removeListener(),n=l.getFrameDocument(),n.write(o),e.focusManager.add(n.getBody()),CKEDITOR.env.air&&t.call(this,n.getWindow().$)},i),l.setCustomData("dialog",i),i=this.getElement(),i.setHtml(""),i.append(l),CKEDITOR.env.ie&&!CKEDITOR.env.edge){var s=CKEDITOR.dom.element.createFromHtml('<span tabindex="-1" style="position:absolute" role="presentation"></span>');s.on("focus",function(){setTimeout(function(){l.$.contentWindow.focus()})}),i.append(s),this.focus=function(){s.focus(),this.fire("focus")}}this.getInputElement=function(){return l},CKEDITOR.env.ie&&(i.setStyle("display","block"),i.setStyle("height",l.$.offsetHeight+2+"px"))},commit:function(){var e,t=this.getDialog().getParentEditor(),a=this.getInputElement().getFrameDocument().getBody(),o=a.getBogus();o&&o.remove(),e=a.getHtml(),setTimeout(function(){t.fire("pasteDialogCommit",{dataValue:e,dataTransfer:n||i.initPasteDataTransfer()})},0)}}]}]}});