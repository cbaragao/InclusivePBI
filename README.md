# InclusivePBI
A repo consolidating accessibility resources for Power BI.

## WCAG Guidelines

<details>
<summary> Principle 1: Perceivable - Information and user interface components must be presentable to users in ways they can perceive. </summary><br />

| Number | Title | Guideline |
| ------ | ----- | --------- |
| 1.1 | Text Alternatives | :link: [Provide text alternatives for any non-text content so that it can be changed into other forms people need, such as large print, braille, speech, symbols or simpler language.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/text-equiv.html) |
| 1.2 | Time-based Media | :link: [Provide alternatives for time-based media.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/media-equiv.html)|
| 1.3 | Adaptable | :link: [Create content that can be presented in different ways (for example simpler layout) without losing information or structure.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/content-structure-separation.html) |
| 1.4 | Distinguishable | :link: [Make it easier for users to see and hear content including separating foreground from background.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast.html) |

<br />

</details>

<details>
<summary> Principle 2: Operable - User interface components and navigation must be operable.</summary> 
<br />

| Number | Title | Guideline |
| ------ | ----- | --------- |
| 2.1 | Keyboard Accessible | :link: [Make all functionality available from a keyboard.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/keyboard-operation.html) |
| 2.2 | Enough Time | :link: [Provide users enough time to read and use content.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/time-limits.html) |
| 2.3 | Seizures | :link: [Do not design content in a way that is known to cause seizures.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/seizure.html) |
| 2.4 | Navigable | :link: [Provide ways to help users navigate, find content, and determine where they are.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/navigation-mechanisms.html) |

<br />

</details>

<details>
<summary> Principle 3: Understandable - Information and the operation of user interface must be understandable. </summary>
<br />

| Number | Title | Guideline |
| ------ | ----- | --------- |
| 3.1 | Readable | :link: [Make text content readable and understandable.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/meaning.html) |
| 3.2 | Predictable | :link: [Make Web pages appear and operate in predictable ways.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/consistent-behavior.html) |
| 3.3 | Input Assistance | :link: [Help users avoid and correct mistakes.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/minimize-error.html) |

<br />

</details>

<details>
<summary> Principle 4: Robust - Content must be robust enough that it can be interpreted reliably by a wide variety of user agents, including assistive technologies. </summary> 
<br />

| Number | Title | Guideline |
| ------ | ----- | --------- |
| 4.1 | Compatible | :link: [Maximize compatibility with current and future user agents, including assistive technologies.](https://www.w3.org/TR/UNDERSTANDING-WCAG20/ensure-compat.html) |

<br />

</details>

## Accessibility Checklist

🔗 [Microsoft Learn: Report Accessibility Checklist](https://learn.microsoft.com/en-us/power-bi/create-reports/desktop-accessibility-creating-reports#report-accessibility-checklist)

<details>
<summary>All Visuals</summary>

- [ ] Ensure color contrast between title, axis label, and data label text and the background are at least 4.5:1.
- [ ] Avoid using color as the only means of conveying information. Use text or icons to supplement or replace the color.
- [ ] Replace unnecessary jargon or acronyms.
- [ ] Ensure alt text is added to all non-decorative visuals on the page.
- [ ] Check that your report page works for users with color vision deficiency.
</details>

<details>
<summary>Slicers</summary>
  
- [ ]  If you have a collection of several slicers on your report pages, ensure your design is consistent across pages. Use the same font, colors, and spatial position as much as possible.
</details>

<details>
<summary>Textbox</summary>

- [ ] Ensure color contrast between font and background are at least 4.5:1.
- [ ] Make sure to put text contents in the alt text box so screen readers can read them.
</details>

<details>
<summary>Visual interactions</summary>
  
- [ ] Is key information only accessible through an interaction? If so, rearrange your visuals so they're pre-filtered to make the important conclusion more obvious.
- [ ] Are you using bookmarks for navigation? Try navigating your report with a keyboard to ensure the experience is acceptable for keyboard-only users.
</details>

<details>
<summary>Sort order</summary>
  
- [ ] Have you purposefully set the sort order of each visual on the page? The accessible Show Data table shows the data in the sort order you have set on the visual.
</details>

<details>
<summary>Tooltips</summary>
  
- [ ] Don't use tooltips to convey important information. Users with motor issues and users who don't use a mouse will have difficulties accessing them.
- [ ] Do add tooltips to charts as ancillary information. It's included in the accessible Show Data table for each visual.
</details>

<details>
<summary>Video</summary>
  
- [ ] Avoid video that automatically starts when the page is rendered.
- [ ] Ensure your video has captions, or provide a transcript.
</details>

<details>
<summary>Audio</summary>
  
- [ ] Avoid audio that automatically starts when the page is rendered.
- [ ] Provide a transcript for any audio.
</details>

<details>
<summary>Shapes</summary>
  
- [ ] Make sure any decorative shapes are marked as hidden in tab order, so they aren't announced by a screen reader.
- [ ] Avoid using too many decorative shapes to the point where they're distracting.
- [ ] When using shapes to call out data points, use alt text to explain what is being called out.
</details>

<details>
<summary>Images</summary>
  
- [ ] When using images to call out data points, use alt text to explain what is being called out.
- [ ] Make sure any decorative images are marked as hidden in tab order, so they aren't announced by a screen reader.
- [ ] Avoid using too many decorative images, to the point where they're distracting.
</details>

<details>
<summary>Power BI visuals</summary>
  
- [ ] Check the accessible Show Data table for Power BI visuals. If the information shown isn't enough, look for another visual.
- [ ] If you use the Play Axis custom visual, ensure it doesn't auto play. Make it obvious that the user must press the play/pause button to start/stop the changing values.
</details>

<details>
<summary>Across visuals on the page</summary>
  
- [ ] Set tab order and turn off tab order (mark the item as hidden) on any decorative items.
</details>

##  Specific Considerations 

### Vestibular Conditions

Kerry Kolosko has a wonderful article on [considerations for people that have vestibular conditions.](https://kerrykolosko.com/drop-the-drop-shadows/)

## Code

### Power Query

I have made a number of [M functions](https://github.com/cbaragao/InclusivePBI/tree/main/PQ) that help deal with colors and consider color blindness.

### DAX

Microsoft MVP Bernat Agulló Roselló has some great articles on using DAX and Tabular Editor to deal with colors:

🔗 [A DYNAMIC COLOR GRADIENT FOR VALUES AND TOTALS](https://www.esbrina-ba.com/conditional-formatting-with-a-dynamic-divergent-color-gradient-for-values-and-totals/) <br />
🔗: [BUILDING A FADING BAR CHART](https://www.esbrina-ba.com/building-a-fading-bar-chart/) <br />
🔗: [THEME-COMPLIANT CONDITIONAL FORMATTING MEASURES](https://www.esbrina-ba.com/theme-compliant-conditional-formatting-measures/) <br />

## Additional Resources
🔗 [Web Content Accessibility Guidelines (WCAG) 2.0](https://www.w3.org/TR/WCAG20/) <br />
🔗 [Laws of UX](https://lawsofux.com/) <br />
🔗 [Microsoft Learn: Design Power BI reports for accessibility](https://learn.microsoft.com/en-us/power-bi/create-reports/desktop-accessibility-creating-reports)  <br />
🔗 [Microsoft Learn: Keyboard Shortcuts for Power BI](https://learn.microsoft.com/en-us/power-bi/create-reports/desktop-accessibility-keyboard-shortcuts)
