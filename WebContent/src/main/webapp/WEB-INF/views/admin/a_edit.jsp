<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<title>관리자페이지 - 글 수정 </title>
  <link href="img/logo_manager.png" rel="icon"><!-- title 옆에 아이콘 -->
   
    <!-- Custom fonts for this template -->
    <link href="./resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
    
     <!-- 추가한 스타일 -->
   <style>
      <%--#modDiv{
         width:800px; background-color:lightgray;
         position:absolute; top:20%; left:50%;
         margin-top:-50px; margin-left:-150px;
         padding:10px; border-radius:10px;
         z-index:1000;
      }
      .modYes{
         margin-top: 10px;   
         float:right;   
      }
      .modNo{
         margin-top: 10px;
         margin-left: 5px;
      }
     
      #search-field:focus{
         color:#6e707e;
         backgound-color:#fff;
         border-color:#bac8f3;
         outline:0;
         box-shadow: 0 0 0 0.2rem rgb(78 115 223 / 25%)
      }
      
      #search-field{
         width:300px;
         padding:.375rem .75rem;
         color:#6e707e;
         border:1px solid #d1d3e2;
         border-radius:.35rem;
      }
      
      #search-span{
         float:right;
         margin-top:-10px;
         margin-bottom:7px;
      }
      
      .pagination {
         float:right;
          display: inline-block;
          padding-left: 0;
          margin-top: 20px;
          border-radius: 4px;
      }
      .pagination > li {
          display: inline;
      }
      .pagination > li > a,
      .pagination > li > span {
          position: relative;
          float: left;
          padding: 6px 12px;
          margin-left: -1px;
          line-height: 1.42857143;
          color: #337ab7;
          text-decoration: none;
          background-color: #fff;
          border: 1px solid #ddd;
      }
      .pagination > li:first-child > a,
      .pagination > li:first-child > span {
          margin-left: 0;
          border-top-left-radius: 4px;
          border-bottom-left-radius: 4px;
      }
      .pagination > li:last-child > a,
      .pagination > li:last-child > span {
          border-top-right-radius: 4px;
          border-bottom-right-radius: 4px;
      }
      .pagination > li > a:hover,
      .pagination > li > span:hover,
      .pagination > li > a:focus,
      .pagination > li > span:focus {
          color: #23527c;
          background-color: #eee;
          border-color: #ddd;
      }
      .pagination > .active > a,
      .pagination > .active > span,
      .pagination > .active > a:hover,
      .pagination > .active > span:hover,
      .pagination > .active > a:focus,
      .pagination > .active > span:focus {
          z-index: 2;
          color: #fff;
          cursor: default;
          background-color: #4e73ef;
          border-color: #4e73ef;
      }
      .pagination > .disabled > span,
      .pagination > .disabled > span:hover,
      .pagination > .disabled > span:focus,
      .pagination > .disabled > a,
      .pagination > .disabled > a:hover,
      .pagination > .disabled > a:focus {
          color: #777;
          cursor: not-allowed;
          background-color: #fff;
          border-color: #ddd;
      }
      
      #show{
         float:left;
         margin-top:20px;
         line-height: 1.42857143;
         
      } --%>
      
       .tag{
      	padding: 0.2em 0.6em 0.3em;
      
      	color:#fff;
      	border:1px solid #fff;
      	border-radius: .35rem;
      	font-size:75%;
      	background-color: #B2B2B2;
      }
      
      .tags{
      	padding-bottom: 2.3em;
      	border:1px solid #d1d3e2;
      	border-radius: .35rem;
      	background-color:#fff;
      	margin-bottom:15px;
      	
      }
      
    .note-editor {
    position: relative;
    overflow: hidden;
    border: 1px solid #a9a9a9;
    margin-left:24px;
   
}
.note-editor .note-dropzone {
    position: absolute;
    z-index: 100;
    display: none;
    color: #87cefa;
    background-color: white;
    opacity: 0.95;
    pointer-event: none;
}
.note-editor .note-dropzone .note-dropzone-message {
    display: table-cell;
    font-size: 28px;
    font-weight: bold;
    text-align: center;
    vertical-align: middle;
}
.note-editor .note-dropzone.hover {
    color: #098ddf;
}
.note-editor.dragover .note-dropzone {
    display: table;
}
.note-editor.codeview .note-editing-area .note-editable {
    display: none;
}
.note-editor.codeview .note-editing-area .note-codable {
    display: block;
}
.note-editor.fullscreen {
    position: fixed;
    top: 0;
    left: 0;
    z-index: 1050;
    width: 100%;
}
.note-editor.fullscreen .note-editable {
    background-color: white;
}
.note-editor.fullscreen .note-resizebar {
    display: none;
}
.note-editor .note-editing-area {
    position: relative;
    overflow: hidden;
}
.note-editor .note-editing-area .note-editable {
    padding: 10px;
    overflow: auto;
    color: #000;
    background-color: #fff;
    outline: 0;
}
.note-editor .note-editing-area .note-editable[contenteditable="true"]:empty:not(:focus):before {
    content: attr(data-placeholder);
}
.note-editor .note-editing-area .note-editable[contenteditable="false"] {
    background-color: #e5e5e5;
}
.note-editor .note-editing-area .note-codable {
    display: none;
    width: 100%;
    padding: 10px;
    margin-bottom: 0;
    font-family: Menlo, Monaco, monospace, sans-serif;
    font-size: 14px;
    color: #ccc;
    background-color: #222;
    border: 0;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    box-shadow: none;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -ms-box-sizing: border-box;
    box-sizing: border-box;
    resize: none;
}
.note-editor .note-statusbar {
    background-color: #f5f5f5;
}
.note-editor .note-statusbar .note-resizebar {
    width: 100%;
    height: 8px;
    padding-top: 1px;
    cursor: ns-resize;
}
.note-editor .note-statusbar .note-resizebar .note-icon-bar {
    width: 20px;
    margin: 1px auto;
    border-top: 1px solid #a9a9a9;
}
.note-air-editor {
    outline: 0;
}
.note-popover .popover {
    max-width: none;
}
.note-popover .popover .popover-content a {
    display: inline-block;
    max-width: 200px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    vertical-align: middle;
}
.note-popover .popover .arrow {
    left: 20px;
}
.note-popover .popover .popover-content,
.panel-heading.note-toolbar {
    padding: 0 0 5px 5px;
    margin: 0;
}
.note-popover .popover .popover-content > .btn-group,
.panel-heading.note-toolbar > .btn-group {
    margin-top: 5px;
    margin-right: 5px;
    margin-left: 0;
}
.note-popover .popover .popover-content .btn-group .note-table,
.panel-heading.note-toolbar .btn-group .note-table {
    min-width: 0;
    padding: 5px;
}
.note-popover .popover .popover-content .btn-group .note-table .note-dimension-picker,
.panel-heading.note-toolbar .btn-group .note-table .note-dimension-picker {
    font-size: 18px;
}
.note-popover .popover .popover-content .btn-group .note-table .note-dimension-picker .note-dimension-picker-mousecatcher,
.panel-heading.note-toolbar .btn-group .note-table .note-dimension-picker .note-dimension-picker-mousecatcher {
    position: absolute !important;
    z-index: 3;
    width: 10em;
    height: 10em;
    cursor: pointer;
}
.note-popover .popover .popover-content .btn-group .note-table .note-dimension-picker .note-dimension-picker-unhighlighted,
.panel-heading.note-toolbar .btn-group .note-table .note-dimension-picker .note-dimension-picker-unhighlighted {
    position: relative !important;
    z-index: 1;
    width: 5em;
    height: 5em;
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAgMAAAAroGbEAAAACVBMVEUAAIj4+Pjp6ekKlAqjAAAAAXRSTlMAQObYZgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfYAR0BKhmnaJzPAAAAG0lEQVQI12NgAAOtVatWMTCohoaGUY+EmIkEAEruEzK2J7tvAAAAAElFTkSuQmCC")
        repeat;
}
.note-popover .popover .popover-content .btn-group .note-table .note-dimension-picker .note-dimension-picker-highlighted,
.panel-heading.note-toolbar .btn-group .note-table .note-dimension-picker .note-dimension-picker-highlighted {
    position: absolute !important;
    z-index: 2;
    width: 1em;
    height: 1em;
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAgMAAAAroGbEAAAACVBMVEUAAIjd6vvD2f9LKLW+AAAAAXRSTlMAQObYZgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfYAR0BKwNDEVT0AAAAG0lEQVQI12NgAAOtVatWMTCohoaGUY+EmIkEAEruEzK2J7tvAAAAAElFTkSuQmCC")
        repeat;
}
.note-popover .popover .popover-content .note-style h1,
.panel-heading.note-toolbar .note-style h1,
.note-popover .popover .popover-content .note-style h2,
.panel-heading.note-toolbar .note-style h2,
.note-popover .popover .popover-content .note-style h3,
.panel-heading.note-toolbar .note-style h3,
.note-popover .popover .popover-content .note-style h4,
.panel-heading.note-toolbar .note-style h4,
.note-popover .popover .popover-content .note-style h5,
.panel-heading.note-toolbar .note-style h5,
.note-popover .popover .popover-content .note-style h6,
.panel-heading.note-toolbar .note-style h6,
.note-popover .popover .popover-content .note-style blockquote,
.panel-heading.note-toolbar .note-style blockquote {
    margin: 0;
}
.note-popover .popover .popover-content .note-color .dropdown-toggle,
.panel-heading.note-toolbar .note-color .dropdown-toggle {
    width: 20px;
    padding-left: 5px;
}
.note-popover .popover .popover-content .note-color .dropdown-menu,
.panel-heading.note-toolbar .note-color .dropdown-menu {
    min-width: 340px;
}
.note-popover .popover .popover-content .note-color .dropdown-menu .btn-group,
.panel-heading.note-toolbar .note-color .dropdown-menu .btn-group {
    margin: 0;
}
.note-popover .popover .popover-content .note-color .dropdown-menu .btn-group:first-child,
.panel-heading.note-toolbar .note-color .dropdown-menu .btn-group:first-child {
    margin: 0 5px;
}
.note-popover .popover .popover-content .note-color .dropdown-menu .btn-group .note-palette-title,
.panel-heading.note-toolbar .note-color .dropdown-menu .btn-group .note-palette-title {
    margin: 2px 7px;
    font-size: 12px;
    text-align: center;
    border-bottom: 1px solid #eee;
}
.note-popover .popover .popover-content .note-color .dropdown-menu .btn-group .note-color-reset,
.panel-heading.note-toolbar .note-color .dropdown-menu .btn-group .note-color-reset {
    padding: 0 3px;
    margin: 3px;
    font-size: 11px;
    cursor: pointer;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
}
.note-popover .popover .popover-content .note-color .dropdown-menu .btn-group .note-color-row,
.panel-heading.note-toolbar .note-color .dropdown-menu .btn-group .note-color-row {
    height: 20px;
}
.note-popover .popover .popover-content .note-color .dropdown-menu .btn-group .note-color-reset:hover,
.panel-heading.note-toolbar .note-color .dropdown-menu .btn-group .note-color-reset:hover {
    background: #eee;
}
.note-popover .popover .popover-content .note-para .dropdown-menu,
.panel-heading.note-toolbar .note-para .dropdown-menu {
    min-width: 216px;
    padding: 5px;
}
.note-popover .popover .popover-content .note-para .dropdown-menu > div:first-child,
.panel-heading.note-toolbar .note-para .dropdown-menu > div:first-child {
    margin-right: 5px;
}
.note-popover .popover .popover-content .dropdown-menu,
.panel-heading.note-toolbar .dropdown-menu {
    min-width: 90px;
}
.note-popover .popover .popover-content .dropdown-menu.right,
.panel-heading.note-toolbar .dropdown-menu.right {
    right: 0;
    left: auto;
}
.note-popover .popover .popover-content .dropdown-menu.right::before,
.panel-heading.note-toolbar .dropdown-menu.right::before {
    right: 9px;
    left: auto !important;
}
.note-popover .popover .popover-content .dropdown-menu.right::after,
.panel-heading.note-toolbar .dropdown-menu.right::after {
    right: 10px;
    left: auto !important;
}
.note-popover .popover .popover-content .dropdown-menu.note-check li a i,
.panel-heading.note-toolbar .dropdown-menu.note-check li a i {
    color: deepskyblue;
    visibility: hidden;
}
.note-popover .popover .popover-content .dropdown-menu.note-check li a.checked i,
.panel-heading.note-toolbar .dropdown-menu.note-check li a.checked i {
    visibility: visible;
}
.note-popover .popover .popover-content .note-fontsize-10,
.panel-heading.note-toolbar .note-fontsize-10 {
    font-size: 10px;
}
.note-popover .popover .popover-content .note-color-palette,
.panel-heading.note-toolbar .note-color-palette {
    line-height: 1;
}
.note-popover .popover .popover-content .note-color-palette div .note-color-btn,
.panel-heading.note-toolbar .note-color-palette div .note-color-btn {
    width: 20px;
    height: 20px;
    padding: 0;
    margin: 0;
    border: 1px solid #fff;
}
.note-popover .popover .popover-content .note-color-palette div .note-color-btn:hover,
.panel-heading.note-toolbar .note-color-palette div .note-color-btn:hover {
    border: 1px solid #000;
}
.note-dialog > div {
    display: none;
}
.note-dialog .form-group {
    margin-right: 0;
    margin-left: 0;
}
.note-dialog .note-modal-form {
    margin: 0;
}
.note-dialog .note-image-dialog .note-dropzone {
    min-height: 100px;
    margin-bottom: 10px;
    font-size: 30px;
    line-height: 4;
    color: lightgray;
    text-align: center;
    border: 4px dashed lightgray;
}
.note-dialog .note-help-dialog {
    font-size: 12px;
    color: #ccc;
    background: transparent;
    background-color: #222 !important;
    border: 0;
    -webkit-opacity: 0.9;
    -khtml-opacity: 0.9;
    -moz-opacity: 0.9;
    opacity: 0.9;
    -ms-filter: alpha(opacity=90);
    filter: alpha(opacity=90);
}
.note-dialog .note-help-dialog .modal-content {
    background: transparent;
    border: 1px solid white;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
}
.note-dialog .note-help-dialog a {
    font-size: 12px;
    color: white;
}
.note-dialog .note-help-dialog .title {
    padding-bottom: 5px;
    margin-bottom: 10px;
    font-size: 14px;
    font-weight: bold;
    color: white;
    border-bottom: white 1px solid;
}
.note-dialog .note-help-dialog .modal-close {
    font-size: 14px;
    color: #dd0;
    cursor: pointer;
}
.note-dialog .note-help-dialog .text-center {
    margin: 10px 0 0;
}
.note-dialog .note-help-dialog .note-shortcut {
    padding-top: 8px;
    padding-bottom: 8px;
}
.note-dialog .note-help-dialog .note-shortcut-row {
    margin-right: -5px;
    margin-left: -5px;
}
.note-dialog .note-help-dialog .note-shortcut-col {
    padding-right: 5px;
    padding-left: 5px;
}
.note-dialog .note-help-dialog .note-shortcut-title {
    font-size: 13px;
    font-weight: bold;
    color: #dd0;
}
.note-dialog .note-help-dialog .note-shortcut-key {
    font-family: "Courier New";
    color: #dd0;
    text-align: right;
}
.note-handle .note-control-selection {
    position: absolute;
    display: none;
    border: 1px solid black;
}
.note-handle .note-control-selection > div {
    position: absolute;
}
.note-handle .note-control-selection .note-control-selection-bg {
    width: 100%;
    height: 100%;
    background-color: black;
    -webkit-opacity: 0.3;
    -khtml-opacity: 0.3;
    -moz-opacity: 0.3;
    opacity: 0.3;
    -ms-filter: alpha(opacity=30);
    filter: alpha(opacity=30);
}
.note-handle .note-control-selection .note-control-handle {
    width: 7px;
    height: 7px;
    border: 1px solid black;
}
.note-handle .note-control-selection .note-control-holder {
    width: 7px;
    height: 7px;
    border: 1px solid black;
}
.note-handle .note-control-selection .note-control-sizing {
    width: 7px;
    height: 7px;
    background-color: white;
    border: 1px solid black;
}
.note-handle .note-control-selection .note-control-nw {
    top: -5px;
    left: -5px;
    border-right: 0;
    border-bottom: 0;
}
.note-handle .note-control-selection .note-control-ne {
    top: -5px;
    right: -5px;
    border-bottom: 0;
    border-left: none;
}
.note-handle .note-control-selection .note-control-sw {
    bottom: -5px;
    left: -5px;
    border-top: 0;
    border-right: 0;
}
.note-handle .note-control-selection .note-control-se {
    right: -5px;
    bottom: -5px;
    cursor: se-resize;
}
.note-handle .note-control-selection .note-control-se.note-control-holder {
    cursor: default;
    border-top: 0;
    border-left: none;
}
.note-handle .note-control-selection .note-control-selection-info {
    right: 0;
    bottom: 0;
    padding: 5px;
    margin: 5px;
    font-size: 12px;
    color: white;
    background-color: black;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    -webkit-opacity: 0.7;
    -khtml-opacity: 0.7;
    -moz-opacity: 0.7;
    opacity: 0.7;
    -ms-filter: alpha(opacity=70);
    filter: alpha(opacity=70);
}

.tooltip {
    position: absolute;
    z-index: 1070;
    display: block;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 12px;
    font-weight: normal;
    line-height: 1.4;
    visibility: visible;
    filter: alpha(opacity=0);
    opacity: 0;
}
.tooltip.in {
    filter: alpha(opacity=90);
    opacity: 0.9;
}
.tooltip.top {
    padding: 5px 0;
    margin-top: -3px;
}
.tooltip.right {
    padding: 0 5px;
    margin-left: 3px;
}
.tooltip.bottom {
    padding: 5px 0;
    margin-top: 3px;
}
.tooltip.left {
    padding: 0 5px;
    margin-left: -3px;
}
.tooltip-inner {
    max-width: 200px;
    padding: 3px 8px;
    color: #fff;
    text-align: center;
    text-decoration: none;
    background-color: #000;
    border-radius: 4px;
}
.tooltip-arrow {
    position: absolute;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
}
.tooltip.top .tooltip-arrow {
    bottom: 0;
    left: 50%;
    margin-left: -5px;
    border-width: 5px 5px 0;
    border-top-color: #000;
}
.tooltip.top-left .tooltip-arrow {
    right: 5px;
    bottom: 0;
    margin-bottom: -5px;
    border-width: 5px 5px 0;
    border-top-color: #000;
}
.tooltip.top-right .tooltip-arrow {
    bottom: 0;
    left: 5px;
    margin-bottom: -5px;
    border-width: 5px 5px 0;
    border-top-color: #000;
}
.tooltip.right .tooltip-arrow {
    top: 50%;
    left: 0;
    margin-top: -5px;
    border-width: 5px 5px 5px 0;
    border-right-color: #000;
}
.tooltip.left .tooltip-arrow {
    top: 50%;
    right: 0;
    margin-top: -5px;
    border-width: 5px 0 5px 5px;
    border-left-color: #000;
}
.tooltip.bottom .tooltip-arrow {
    top: 0;
    left: 50%;
    margin-left: -5px;
    border-width: 0 5px 5px;
    border-bottom-color: #000;
}
.tooltip.bottom-left .tooltip-arrow {
    top: 0;
    right: 5px;
    margin-top: -5px;
    border-width: 0 5px 5px;
    border-bottom-color: #000;
}
.tooltip.bottom-right .tooltip-arrow {
    top: 0;
    left: 5px;
    margin-top: -5px;
    border-width: 0 5px 5px;
    border-bottom-color: #000;
}
.popover {
    position: absolute;
    top: 0;
    left: 0;
    z-index: 1060;
    display: none;
    max-width: 276px;
    padding: 1px;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    font-weight: normal;
    line-height: 1.42857143;
    text-align: left;
    white-space: normal;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-radius: 6px;
    -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.popover.top {
    margin-top: -10px;
}
.popover.right {
    margin-left: 10px;
}
.popover.bottom {
    margin-top: 10px;
}
.popover.left {
    margin-left: -10px;
}
.popover-title {
    padding: 8px 14px;
    margin: 0;
    font-size: 14px;
    background-color: #f7f7f7;
    border-bottom: 1px solid #ebebeb;
    border-radius: 5px 5px 0 0;
}
.popover-content {
    padding: 9px 14px;
}
.popover > .arrow,
.popover > .arrow:after {
    position: absolute;
    display: block;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
}
.popover > .arrow {
    border-width: 11px;
}
.popover > .arrow:after {
    content: "";
    border-width: 10px;
}
.popover.top > .arrow {
    bottom: -11px;
    left: 50%;
    margin-left: -11px;
    border-top-color: #999;
    border-top-color: rgba(0, 0, 0, 0.25);
    border-bottom-width: 0;
}
.popover.top > .arrow:after {
    bottom: 1px;
    margin-left: -10px;
    content: " ";
    border-top-color: #fff;
    border-bottom-width: 0;
}
.popover.right > .arrow {
    top: 50%;
    left: -11px;
    margin-top: -11px;
    border-right-color: #999;
    border-right-color: rgba(0, 0, 0, 0.25);
    border-left-width: 0;
}
.popover.right > .arrow:after {
    bottom: -10px;
    left: 1px;
    content: " ";
    border-right-color: #fff;
    border-left-width: 0;
}
.popover.bottom > .arrow {
    top: -11px;
    left: 50%;
    margin-left: -11px;
    border-top-width: 0;
    border-bottom-color: #999;
    border-bottom-color: rgba(0, 0, 0, 0.25);
}
.popover.bottom > .arrow:after {
    top: 1px;
    margin-left: -10px;
    content: " ";
    border-top-width: 0;
    border-bottom-color: #fff;
}
.popover.left > .arrow {
    top: 50%;
    right: -11px;
    margin-top: -11px;
    border-right-width: 0;
    border-left-color: #999;
    border-left-color: rgba(0, 0, 0, 0.25);
}
.popover.left > .arrow:after {
    right: 1px;
    bottom: -10px;
    content: " ";
    border-right-width: 0;
    border-left-color: #fff;
}

.close {
    float: right;
    font-size: 21px;
    font-weight: bold;
    line-height: 1;
    color: #000;
    text-shadow: 0 1px 0 #fff;
    filter: alpha(opacity=20);
    opacity: 0.2;
}
.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
    filter: alpha(opacity=50);
    opacity: 0.5;
}
button.close {
    -webkit-appearance: none;
    padding: 0;
    cursor: pointer;
    background: transparent;
    border: 0;
}
.modal-open {
    overflow: hidden;
}
.modal {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 1040;
    display: none;
    overflow: hidden;
    -webkit-overflow-scrolling: touch;
    outline: 0;
}
.modal.fade .modal-dialog {
    -webkit-transition: -webkit-transform 0.3s ease-out;
    -o-transition: -o-transform 0.3s ease-out;
    transition: transform 0.3s ease-out;
    -webkit-transform: translate(0, -25%);
    -ms-transform: translate(0, -25%);
    -o-transform: translate(0, -25%);
    transform: translate(0, -25%);
}
.modal.in .modal-dialog {
    -webkit-transform: translate(0, 0);
    -ms-transform: translate(0, 0);
    -o-transform: translate(0, 0);
    transform: translate(0, 0);
}
.modal-open .modal {
    overflow-x: hidden;
    overflow-y: auto;
}
.modal-dialog {
    position: relative;
    width: auto;
    margin: 10px;
}
.modal-content {
    position: relative;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #999;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-radius: 6px;
    outline: 0;
    -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
    box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
}
.modal-backdrop {
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    background-color: #000;
}
.modal-backdrop.fade {
    filter: alpha(opacity=0);
    opacity: 0;
}
.modal-backdrop.in {
    filter: alpha(opacity=50);
    opacity: 0.5;
}
.modal-header {
    min-height: 16.42857143px;
    padding: 15px;
    border-bottom: 1px solid #e5e5e5;
}
.modal-header .close {
    margin-top: -2px;
}
.modal-title {
    margin: 0;
    line-height: 1.42857143;
}
.modal-body {
    position: relative;
    padding: 15px;
}
.modal-footer {
    padding: 15px;
    text-align: right;
    border-top: 1px solid #e5e5e5;
}
.modal-footer .btn + .btn {
    margin-bottom: 0;
    margin-left: 5px;
}
.modal-footer .btn-group .btn + .btn {
    margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
    margin-left: 0;
}
.modal-scrollbar-measure {
    position: absolute;
    top: -9999px;
    width: 50px;
    height: 50px;
    overflow: scroll;
}
@media (min-width: 768px) {
    .modal-dialog {
        width: 600px;
        margin: 30px auto;
    }
    .modal-content {
        -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    }
    .modal-sm {
        width: 300px;
    }
}
@media (min-width: 992px) {
    .modal-lg {
        width: 900px;
    }
}

.form-control{
	margin-left: 24px;
	max-width: 880px;
}

.form{
	max-width: 900px;
}
.nav{
	max-width: 900px;
	float:right;
}
   </style>
   <!-- 추가한 스타일 -->
   <script src="./resources/js/jquery.js"></script>
   
   
</head>    
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../ywhy_loginafter_manager_index.jsp"><%-- 로고 누르면 관리자 메인화면으로 넘어간다. --%>
               <div class="sidebar-brand-icon">
                    <img src="img/logo_manager.png" style="width:45px; height:45px;">
                </div>
                <div class="sidebar-brand-text mx-3">YWHY</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="manager_index.jsp">
                    <i class="fas fa-fw fa-hat-wizard"></i>
                    <span>Manager</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                management
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Bulletin Board</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="adminQuestion.jsp">Q&amp;A</a>
                        <a class="collapse-item" href="adminCommunity.jsp">Community</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="usermanagement.jsp">
                    <i class="fas fa-fw fa-user"></i>
                    <span>User Management</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content" >
			<div id="article-edit" class="content" role="main">
	    		<div class="panel panel-default clearfix">
        			<div class="panel-heading clearfix">
						
            			<div class="content-identity pull-right">
            			<input type="hidden" name="b_no" value="${b.b_no}" />
                			
            			</div>
        			</div>
        			<div class="panel-body">
        				<form action="a_edit_ok?b_no=${b.b_no}&page=${page}" method="post" id="article-form" 
        				class="article-form" role="form" onsubmit="return postForm()">
        					<input type="hidden" name="_method" value="PUT" id="_method">
                			<fieldset class="form">
								<input type="hidden" name="_csrf" value="d63a7b3b-13a3-49d5-9a01-a116f355ec55">
        						<div class="form-group has-feedback">
           							<div><!-- 카테고리 -->
                						<select id="category" name="b_cate" class="form-control" required="">
                    						<option value="">게시판을 선택해 주세요.</option>
											<option value="Q&A" data-external="false"
												data-anonymity="false"<c:if test="${b.b_cate=='Q&A'}">${'selected'}</c:if>>Q&amp;A</option>
											<option value="커뮤니티" data-external="false"
												data-anonymity="false"<c:if test="${b.b_cate=='커뮤니티'}">${'selected'}</c:if>>커뮤니티</option>
                						</select>
            						</div>
        						</div>
								<div class="form-group has-feedback">
    								<div>
    									<input type="text" name="b_title" required="" value="${b.b_title}"
    									 placeholder="제목을 입력해 주세요." class="form-control" id="title">
    								</div>
								</div>
								<div class="form-group has-feedback">
    								<div class="tags form-control">
    									<input type="text" name="b_tag" value="${b.b_tag}" 
    									placeholder="Tags," class="tag" id="tagString">
    								</div>
								</div>

								<div class="form-group has-feedback">
    								<textarea name="b_cont" id="summernote" rows="20"
    								>
    								${b.b_cont}</textarea>
								</div>
								<input type="hidden" name="textType" value="HTML" id="textType">

                    			<div class="nav" role="navigation">
                        			<fieldset class="buttons">
	                           			<a href="javascript:window.history.back();" class="btn btn-danger btn-wide" onclick="return confirm('정말로 취소하시겠습니까?')">취소</a>
	                            		<input type="submit" name="update" class="create btn btn-success btn-wide pull-right" value="수정" id="update">
                        			</fieldset>
                    			</div>
				          	</fieldset>
				        </form>
					</div>
				</div>
			</div>
           	
            </div>
    	 <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>&copy; YWHY 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    

    <script src="./resources/admin/js/jquery.js"></script>
   

    <!-- Bootstrap core JavaScript-->
    <script src="./resources/admin/vendor/jquery/jquery.min.js"></script>
    <script src="./resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="./resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="./resources/admin/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script> -->

    <!-- Page level custom scripts -->
    <script src="./resources/admin/js/demo/datatables-demo.js"></script>

   	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<script>
    	var contextPath = "";
        var encodedURL = "%2Farticle%2Fedit%2F1007659";
    </script>
        
    <script src="./resources/js/application.js" type="text/javascript"></script>
    <script src="./resources/js/apps/search.js" type="text/javascript"></script>
    <script src="./resources/js/apps/notification.js" type="text/javascript"></script>
	<script src="./resources/js/libs/typeahead.bundle.js"></script>
	<script type="text/javascript">
			var tagTokenizers = new Bloodhound({
		    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('tagName'),
		    queryTokenizer: Bloodhound.tokenizers.whitespace,
		    remote: {
		      url: '/tag?tagName=%QUERY',
		      wildcard: '%QUERY'
		    }
		});
		
		var tagsInputConfig = {
		        typeaheadjs: {
					displayKey: 'tagName',
				    valueKey: 'tagName',
				    source: tagTokenizers.ttAdapter(),
				    templates: {
				    	suggestion: function(tag){
				    	var query = tag._query.replace(/[.*+\-?^$(){}|[\]\\]/g, '\\$&');
				        var regexp = new RegExp('^(' + query +')', 'g');
				        return '<div>' + tag.tagName.replace(regexp, "<strong>$1</strong>") + ' <span>+' + tag.count + '</span></div>';
					}
				}
		    }
		};
										
		var tagsInputItemAddedEventCallback = function(event) {
		    $(this).parent().find(".tt-input").typeahead("val","");
		};
		
	</script>
	<script type="text/javascript">
		$('input[name=b_tag]').tagsinput(tagsInputConfig);
		$('input[name=b_tag]').on('itemAdded', tagsInputItemAddedEventCallback);
		
		$('#summernote').summernote({minHeight: 300, lang: 'ko-KR',
		  onInit: function() {
		    if($(window).height() > 400) {
		        $('.note-editable').css('max-height', $(window).height()-100);
		    }
		    $(".note-link-btn").attr("type","button");
		  },
		  onImageUpload: $.onImageUpload($('#summernote'))
		});
		
		function postForm() {
		    $('textarea[name="content.text"]').val($('#summernote').code());
		}
		
		$('#notice').click(function() {
		  if($(this).is(':checked')) {
		    $('#noticeCategoryList').show();
		  } else {
		    $('#noticeCategoryList').hide();
		    $('input[name="notices"]').prop('checked', false);
		  }
		});
	</script>
	<script type="text/javascript">
		setInterval(function(){
			$.get("/keepAlive");
		}, 1500 * 1000);
	</script>
    </body>
</html>
