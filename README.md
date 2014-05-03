Deedy-Resume
=========================

A **one page** , **two asymmetric column** resume template in **XeTeX** that caters to an **undergraduate Computer Science** student.
As of **v1.1**, there is an option to choose from two templates:

1. **MacFonts** - uses fonts native to OSX - *Helvetica*, *Helvetica Neue* (and it's Light and Ultralight versions) and the CJK fonts *Heiti SC*, and *Heiti TC*. The EULA of these fonts prevents distribution on Open Source.
2. **OpenFonts** - uses free open sourced variants that resemble the above. We use *Lato* (and many of its variants) and *Raleway*.


## Motivation

Common LaTeX resume-builders such as [**moderncv**](http://www.latextemplates.com/template/moderncv-cv-and-cover-letter)  and the [**friggeri-cv**](https://github.com/afriggeri/cv) look great if you're okay with a multipage resume with numerous citations, but usually isn't ideal for making a thorough single-page one. A lot of companies today search resumes based on [keywords](http://www.businessinsider.com/most-big-companies-have-a-tracking-system-that-scans-your-resume-for-keywords-2012-1) but at the same time require/prefer a one page resume, especially for undergraduates. 

This template attempts to **not look horrible**, allow **detail**, be a **single page**, and allow useful **LaTeX templating**.

## Preview

### OpenFonts
![alt tag](https://raw.githubusercontent.com/deedydas/Deedy-Resume/master/OpenFonts/sample-image.png)

### MacFonts
![alt tag](https://raw.githubusercontent.com/deedydas/Deedy-Resume/master/MacFonts/sample-image.png)

## Dependencies

1. Compiles only with **XeTeX**.
2. Uses fonts that are usually only available to **Mac** users such as Helvetica Neue Light.

## Availability

1. MacFonts version - [as an online preview](http://debarghyadas.com/resume/debarghya-das-resume.pdf) and [as a direct download](https://github.com/deedydas/Deedy-Resume/raw/master/MacFonts/deedy_resume.pdf)
2. OpenFonts version - [as a direct download](https://github.com/deedydas/Deedy-Resume/raw/master/OpenFonts/deedy_resume-openfont.pdf)
3. WriteLatex.com (v1 fonts/colors changed) - [compilable online](https://www.writelatex.com/templates/deedy-resume/sqdbztjjghvz#.U2H9Kq1dV18)
4. ShareLatex.com (v1 fonts changes) - [compilable online](https://www.sharelatex.com/templates/cv-or-resume/deedy-resume)

## Changelog
### v1.1
 1. Fixed several compilation bugs with \renewcommand
 2. Got Open-source fonts (Windows/Linux support)
 3. Added Last Updated
 4. Move Title styling into .sty
 5. Commented .sty file.

## TODO
1. Merge OpenFont and MacFonts as a single sty with options.
2. Integrate biber/bibtex for article citation under publications.
3. Figure out a smoother way for the document to flow onto the next page.
4. Add styling information for a "Projects/Hacks" section.
5. Add location/address information

## Known Issues:
1. Overflows onto second page if any column's contents are more than the vertical limit
2. Hacky space on the first bullet point on the second column.

## License

The MIT License (MIT)

Copyright (c) 2014 Debarghya Das

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
