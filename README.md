# InclusivePBI
A repo consolidating 508 best practices for Power BI and ways to deal with color.

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

##  Specific Considerations 

### Vestibular Conditions

Kerry Kolosko has a wonderful article on [considerations for people that have vestibular conditions.](https://kerrykolosko.com/drop-the-drop-shadows/)

## Code

### Power Query

I have made a number of [M functions](https://github.com/cbaragao/InclusivePBI/tree/main/PQ) that help deal with colors and consider color blindness.

### DAX

Microsoft MVP Bernat Agulló Roselló has some great articles on using DAX and Tabular Editor to deal with colors:

🔗 [A DYNAMIC COLOR GRADIENT FOR VALUES AND TOTALS](https://www.esbrina-ba.com/conditional-formatting-with-a-dynamic-divergent-color-gradient-for-values-and-totals/) <br /> <br />
:link: [BUILDING A FADING BAR CHART](https://www.esbrina-ba.com/building-a-fading-bar-chart/) <br /> <br />
:link: [THEME-COMPLIANT CONDITIONAL FORMATTING MEASURES](https://www.esbrina-ba.com/theme-compliant-conditional-formatting-measures/) <br /> <br />

## Additional Resources
[Web Content Accessibility Guidelines (WCAG) 2.0](https://www.w3.org/TR/WCAG20/)
