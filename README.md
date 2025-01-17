<div align="center">
<h1 style="font-family: monospace;">Hanzi2Pinyin-notetype</h1>
<!-- GitHub Release --><a href="https://github.com/alyssabedard/Hanzi2Pinyin-notetype/releases"><img src="https://img.shields.io/github/v/release/alyssabedard/Hanzi2Pinyin-notetype?style=for-the-badge&labelColor=%231C1C1C&color=%23A692E3&logo=github" /></a>

<pre>
Note type for <a href="https://github.com/alyssabedard/Hanzi2Pinyin" style="color: #9B83D5;">Hanzi2Pinyin</a>
</pre>
</div>

Really basic [Anki](https://apps.ankiweb.net/) note type to see ruby characters (pinyin, zhuyin, etc...) above chinese characters (hanzi).

<div align="center" style="display: flex; justify-content: center; gap: 20px;">
    <img src="docs/screenshots/demo-liuqi.gif" width="600" alt="Demo of note type in dark mode"/>
</div>



## Usage
🚧 Documentation for non-technical users coming soon, please also  read [Hanzi2Pinyin](https://github.com/alyssabedard/Hanzi2Pinyin)

1. Download Note type or use the individual files:
   - Anki Note type (.apkg) can be found [here](https://github.com/alyssabedard/Hanzi2Pinyin-notetype/releases) _(first zip file)_
     - or under [Hanzi2Pinyin/note_type/](Hanzi2Pinyin/note_type)
   - Individual files (html and css) under [Hanzi2Pinyin/individual_files/](Hanzi2Pinyin/individual_files)
2. Download the [Hanzi2Pinyin](https://ankiweb.net/shared/info/77106192) add-on to Anki


### Fonts
Make changes according to your preferences 
```
/*****************************
* CHINESE TEXT STYLES
* Customize the appearance of Chinese characters and pinyin here
******************************/
@font-face {
    font-family: 'SourceHanSerif';
    src: url('_SourceHanSerifSC-Medium.otf') format('opentype'); /* Inside Anki Collection media */
    /* Optionally add weights */
    /* font-weight: normal;*/
    /* font-style: normal;*/
}
.hanzi-ruby {
    /* Chinese font stack - adjust or add fonts as needed */
    font-family: "SourceHanSerif", "Kai", "Kaiti SC", "KaiTi", "楷体", /* Primary Chinese fonts*/
                "STKaiti",                           /* macOS */
                "NSimSun", "新宋体",                  /* Windows */
                "Noto Sans CJK SC",                  /* Linux/Android */
                "WenQuanYi Zen Hei",
                "DroidSansFallback",
                "Microsoft YaHei",                   /* Windows fallback */
                serif;
    font-size: 46px;
}

```
<br>
<div align="center" style="display: flex; justify-content: center; gap: 20px;">
<img src="docs/screenshots/demo-styling.png" width="800" alt="Demo of note type in dark mode"/>
</div>



##  Features
- Target expression/word are automatically highlighted for easy recognition
- Toggle ruby text:
  - View readings by hovering over specific characters or
  - Toggle button to display/hide all readings at once


## Anki Note Type Fields
| Field Name       | Usage                                                                          |
|------------------|--------------------------------------------------------------------------------|
| Expression       | Target word/expression  (Anki Sort Field)                                      |
| ExpressionPinyin | _Optional_                                                                     |
| ExpressionAudio  | Word/Expression audio                                                          |
| Sentence         | _Optional_                                                                     |
| SentencePinyin   | Sentence with ruby text (pinyin, zhuyin...)                                    |
| SentenceAudio    | Sentence audio                                                                 |
| Translation      | Native Language or second language translation of the sentence                 |
| Definition       | Meaning/definition of the expression/word                                      |
| Screenshot       | Screenshot/images                                                              |
| Source           | Where the content is from (e.g., movie name, book title)                       |
| Notes            | Additional context or grammar points                                           |
| IsSentenceCard   | Mark it with an "x" if this is a sentence-focused card else audio-focused card |


## Contributing & Support

| Type                                                                              | Description                     |
|-----------------------------------------------------------------------------------|---------------------------------|
| [Issues & Requests](https://github.com/alyssabedard/Hanzi2Pinyin-notetype/issues) | Bug reports or feature requests | 
| [Contributing](.github/CONTRIBUTING.md)                                           | Fork the repo and submit a PR   |
| [Discussions](https://github.com/alyssabedard/Hanzi2Pinyin-notetype/discussions)  | Getting help and questions      |
| [Support](.github/SUPPORT.md)                                                     | Support - Getting Started       |

## Acknowledgement
- [Source Han Serif](https://source.typekit.com/source-han-serif/?scid=social71226596) - An open source Pan-CJK typeface ([GitHub](https://github.com/adobe-fonts/source-han-serif))