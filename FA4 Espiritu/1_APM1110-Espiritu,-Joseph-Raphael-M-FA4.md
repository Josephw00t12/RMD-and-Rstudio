---
title: "FA-4 R 6.1"
author: "Espiritu, Joseph Raphael M."
date: "2025-03-03"
output:
  html_document:
    keep_md: true
  rmarkdown: github_document
  word_document: default
  pdf_document: default
---
### **Exercises 6.1**

#### ***5.*** A geospatial analysis system has four sensors supplying images. The percent- age of images supplied by each sensor and the percentage of images relevant to a query are shown in the following table.


```{=html}
<div id="usnbziwimq" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#usnbziwimq table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#usnbziwimq thead, #usnbziwimq tbody, #usnbziwimq tfoot, #usnbziwimq tr, #usnbziwimq td, #usnbziwimq th {
  border-style: none;
}

#usnbziwimq p {
  margin: 0;
  padding: 0;
}

#usnbziwimq .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#usnbziwimq .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#usnbziwimq .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#usnbziwimq .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#usnbziwimq .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#usnbziwimq .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#usnbziwimq .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#usnbziwimq .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#usnbziwimq .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#usnbziwimq .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#usnbziwimq .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#usnbziwimq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#usnbziwimq .gt_spanner_row {
  border-bottom-style: hidden;
}

#usnbziwimq .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#usnbziwimq .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#usnbziwimq .gt_from_md > :first-child {
  margin-top: 0;
}

#usnbziwimq .gt_from_md > :last-child {
  margin-bottom: 0;
}

#usnbziwimq .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#usnbziwimq .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#usnbziwimq .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#usnbziwimq .gt_row_group_first td {
  border-top-width: 2px;
}

#usnbziwimq .gt_row_group_first th {
  border-top-width: 2px;
}

#usnbziwimq .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#usnbziwimq .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#usnbziwimq .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#usnbziwimq .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#usnbziwimq .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#usnbziwimq .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#usnbziwimq .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#usnbziwimq .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#usnbziwimq .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#usnbziwimq .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#usnbziwimq .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#usnbziwimq .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#usnbziwimq .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#usnbziwimq .gt_left {
  text-align: left;
}

#usnbziwimq .gt_center {
  text-align: center;
}

#usnbziwimq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#usnbziwimq .gt_font_normal {
  font-weight: normal;
}

#usnbziwimq .gt_font_bold {
  font-weight: bold;
}

#usnbziwimq .gt_font_italic {
  font-style: italic;
}

#usnbziwimq .gt_super {
  font-size: 65%;
}

#usnbziwimq .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#usnbziwimq .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#usnbziwimq .gt_indent_1 {
  text-indent: 5px;
}

#usnbziwimq .gt_indent_2 {
  text-indent: 10px;
}

#usnbziwimq .gt_indent_3 {
  text-indent: 15px;
}

#usnbziwimq .gt_indent_4 {
  text-indent: 20px;
}

#usnbziwimq .gt_indent_5 {
  text-indent: 25px;
}

#usnbziwimq .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#usnbziwimq div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_title gt_font_normal" style>Sensor Data</td>
    </tr>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>Percentage of Images Supplied and Relevant Images</td>
    </tr>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Sensor">Sensor</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Images.Supplied">Images Supplied</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Relevant.Images">Relevant Images</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Sensor" class="gt_row gt_right">1</td>
<td headers="Images.Supplied" class="gt_row gt_right">15%</td>
<td headers="Relevant.Images" class="gt_row gt_right">50%</td></tr>
    <tr><td headers="Sensor" class="gt_row gt_right">2</td>
<td headers="Images.Supplied" class="gt_row gt_right">20%</td>
<td headers="Relevant.Images" class="gt_row gt_right">60%</td></tr>
    <tr><td headers="Sensor" class="gt_row gt_right">3</td>
<td headers="Images.Supplied" class="gt_row gt_right">25%</td>
<td headers="Relevant.Images" class="gt_row gt_right">80%</td></tr>
    <tr><td headers="Sensor" class="gt_row gt_right">4</td>
<td headers="Images.Supplied" class="gt_row gt_right">40%</td>
<td headers="Relevant.Images" class="gt_row gt_right">85%</td></tr>
  </tbody>
  
  
</table>
</div>
```

What is the overall Percentage of the Relevant Images?

This is one Equation to solve it

\[
P_{\text{overall}} = \frac{\sum (P_{\text{supplied}, i} \times P_{\text{relevant}, i})}{\sum P_{\text{supplied}, i}}
\]


``` r
percentSupplied <- c(15, 20, 25, 40)
percentRelevant <- c(50, 60, 80, 85)

overallPercentage <- sum(percentSupplied * percentRelevant) / sum(percentSupplied)

cat("Overall percentage of the Relevant images:", overallPercentage, "%\n")
```

```
## Overall percentage of the Relevant images: 73.5 %
```
#### ***6.*** A fair coin is tossed twice.
Let E be the event that both tosses have the same outcome, that is, E1 = (HH, TT).
Let E2 be the event that the first toss is a head, that is, E2 = (HH, HT).
Let E3 be the event that the second toss is a head, that is, E3 = (TH, HH).
Show that E1, E2, and E3 are pairwise independent but not mutually independent.


```{=html}
<div id="vyeiaculbh" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#vyeiaculbh table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#vyeiaculbh thead, #vyeiaculbh tbody, #vyeiaculbh tfoot, #vyeiaculbh tr, #vyeiaculbh td, #vyeiaculbh th {
  border-style: none;
}

#vyeiaculbh p {
  margin: 0;
  padding: 0;
}

#vyeiaculbh .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#vyeiaculbh .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#vyeiaculbh .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#vyeiaculbh .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#vyeiaculbh .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#vyeiaculbh .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vyeiaculbh .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#vyeiaculbh .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#vyeiaculbh .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#vyeiaculbh .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#vyeiaculbh .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#vyeiaculbh .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#vyeiaculbh .gt_spanner_row {
  border-bottom-style: hidden;
}

#vyeiaculbh .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#vyeiaculbh .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#vyeiaculbh .gt_from_md > :first-child {
  margin-top: 0;
}

#vyeiaculbh .gt_from_md > :last-child {
  margin-bottom: 0;
}

#vyeiaculbh .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#vyeiaculbh .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#vyeiaculbh .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#vyeiaculbh .gt_row_group_first td {
  border-top-width: 2px;
}

#vyeiaculbh .gt_row_group_first th {
  border-top-width: 2px;
}

#vyeiaculbh .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#vyeiaculbh .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#vyeiaculbh .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#vyeiaculbh .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vyeiaculbh .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#vyeiaculbh .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#vyeiaculbh .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#vyeiaculbh .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#vyeiaculbh .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vyeiaculbh .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#vyeiaculbh .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#vyeiaculbh .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#vyeiaculbh .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#vyeiaculbh .gt_left {
  text-align: left;
}

#vyeiaculbh .gt_center {
  text-align: center;
}

#vyeiaculbh .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#vyeiaculbh .gt_font_normal {
  font-weight: normal;
}

#vyeiaculbh .gt_font_bold {
  font-weight: bold;
}

#vyeiaculbh .gt_font_italic {
  font-style: italic;
}

#vyeiaculbh .gt_super {
  font-size: 65%;
}

#vyeiaculbh .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#vyeiaculbh .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#vyeiaculbh .gt_indent_1 {
  text-indent: 5px;
}

#vyeiaculbh .gt_indent_2 {
  text-indent: 10px;
}

#vyeiaculbh .gt_indent_3 {
  text-indent: 15px;
}

#vyeiaculbh .gt_indent_4 {
  text-indent: 20px;
}

#vyeiaculbh .gt_indent_5 {
  text-indent: 25px;
}

#vyeiaculbh .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#vyeiaculbh div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Coin Toss Outcomes</td>
    </tr>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Result">Result</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Heads">Heads</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Tails">Tails</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Result" class="gt_row gt_left">Heads</td>
<td headers="Heads" class="gt_row gt_left">HH</td>
<td headers="Tails" class="gt_row gt_left">HT</td></tr>
    <tr><td headers="Result" class="gt_row gt_left">Tails</td>
<td headers="Heads" class="gt_row gt_left">TH</td>
<td headers="Tails" class="gt_row gt_left">TT</td></tr>
  </tbody>
  
  
</table>
</div>
```

\[
(E_1) = \{ \text{HH}, \text{TT} \} \\
\text{E1 is the Event both results are the Same} \\
(E_2) = \{ \text{HH}, \text{HT} \} \\
\text{E2 is the Event first results are the Heads} \\
(E_3) = \{ \text{HH}, \text{TH} \} \\
\text{E3 is the Event second results are the Heads} \\
P(E_1) = P(E_2) = P(E_3) = \frac{1}{2} \\
\]

#### To show PAIRWISE INDEPENDENCE we can just show their Union/Probabilities Together

\[
P(E_i \cap E_j) = P(E_i) \times P(E_j)
\]

For \(E_1\) and \(E_2\):

\[
P(E_1 \cap E_2) = P(\text{HH}) = \frac{1}{4}
\]
\[
P(E_1) \times P(E_2) = \frac{1}{2} \times \frac{1}{2} = \frac{1}{4}
\]

Similarly:

\[
P(E_1 \cap E_3) = P(\text{HH}) = \frac{1}{4}
\]
\[
P(E_1) \times P(E_3) = \frac{1}{2} \times \frac{1}{2} = \frac{1}{4}
\]
\[
P(E_2 \cap E_3) = P(\text{HH}) = \frac{1}{4}
\]
\[
P(E_2) \times P(E_3) = \frac{1}{2} \times \frac{1}{2} = \frac{1}{4}
\]

#### These prove their PAIRWISE INDEPENDENCE, but now to show they are NOT MUTUALLY INDEPENDENT
#### We can apply the same principle of multiplying the probabilities and their unions, and we will see the problem


\[
P(E_1 \cap E_2 \cap E_3) = P(E_1) \times P(E_2) \times P(E_3)
\]

\[
P(E_1 \cap E_2 \cap E_3) = P(\text{HH}) = \frac{1}{4}
\]

\[
P(E_1) \times P(E_2) \times P(E_3) = \frac{1}{2} \times \frac{1}{2} \times \frac{1}{2} = \frac{1}{8}
\]

#### Hence, they are not mutually independent because \( E_2 \) and \( E_3 \) themselves don't carry enough information to help form the probability of \( E_1 \).  

#### However, having the union of \( E_2 \) and \( E_3 \) changes the probability of \( E_1 \) happening, making it guaranteed.





















