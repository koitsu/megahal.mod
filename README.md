<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GPLv2 License][license-shield]][license-url]


<!-- ABOUT THE PROJECT -->
## About The Project

This project is to maintain and enhance the megahal module (`megahal.mod`) for the current release of the Eggdrop IRC
bot.

Read more about MegaHal at [Wikipedia](https://en.wikipedia.org/wiki/MegaHAL).

Read more about Eggdrop at [Wikipedia](https://en.wikipedia.org/wiki/Eggdrop).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

You need to be familiar with building Eggdrop from source. If this is something you have never done, please review and
refer to the Eggdrop documentation first.

### Installation

Once you have your Eggdrop bot building, you can add in this module pretty easily.  Follow the following basic steps to
get your module built and installed.

The following commands assume you have your Eggdrop source extracted to the `~/eggdrop` directory. Adjust paths as
needed.

1. Clone the repo into the `src/mod` folder:
```shell
cd ~/eggdrop/src/mod
git clone https://github.com/orkim/megahal.mod.git megahal.mod
```

2. Configure Eggdrop again (`config` or `iconfig` Makefile targets) to build the megahal module. This assumes you are
building eggdrop in the source tree. If you are using out-of-source build directory, you will need to adjust the path to
point to where your top `Makefile` is located:
```shell
cd ~/eggdrop
make config
```

3. Once successfully built, you can copy the module over with `make install`:
```shell
make install
```

4. The first time you install megahal.mod you probably want to copy over the initial megahal files. This will copy over
the `scripts/megahal.tcl` file, an example `eggdrop-megahal.conf` to append to your Eggdrop configuration file, and a
skeleton `megahal.data` directory for use by the module:
```shell
cp -a ~/eggdrop/src/mod/megahal.mod/conf/* /path/to/eggdrop
```

5. Finally, edit your Eggdrop configuration file and append the content of `eggdrop-megahal.conf` to the end:
```shell
cat /path/to/eggdrop/eggdrop-megahal.conf >> /path/to/eggdrop/bot.conf
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

TBD

- Enable/disable per channel
- Training data

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

TBD

- [ ] Feature 1
- [ ] Feature 2
- [ ] Feature 3
    - [ ] Nested Feature

See the [open issues](https://github.com/orkim/megahal.mod/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the GPLv2 License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

We use this projects [github issues](https://github.com/orkim/megahal.mod/issues) (for bugs, feature requests, etc) or
[github discussions](https://github.com/orkim/megahal.mod/discussions) for general announcements/questions/support.

Project Link: [https://github.com/orkim/megahal.mod](https://github.com/orkim/megahal.mod)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Eggheads](https://github.com/eggheads/eggdrop) -  The Eggdrop IRC Bot
* Jason Hutchens [(github)](https://github.com/kranzky) - MegaHal Author
* Jason Hutchens [(homepage)](https://www.kranzky.com/) - Current Homepage
* Jason Hutchens [(homepage)](https://homepage.kranzky.com/) - Homepage Circa 2000
* Jason Hutchens - [How MegaHal Works](https://web.archive.org/web/20180423062335/http://megahal.alioth.debian.org/How.html)
* [Zev "^Baron^" Toledano - megahal.mod v3.5](http://thelastexit.net/megahal/index.html)
* [z0rc / Nexor - megahal.mod v3.6 and v3.7](https://github.com/z0rc/megahal.mod)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/orkim/megahal.mod.svg?style=for-the-badge
[contributors-url]: https://github.com/orkim/megahal.mod.svg/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/orkim/megahal.mod.svg?style=for-the-badge
[forks-url]: https://github.com/orkim/megahal.mod/network/members
[stars-shield]: https://img.shields.io/github/stars/orkim/megahal.mod.svg?style=for-the-badge
[stars-url]: https://github.com/orkim/megahal.mod/stargazers
[issues-shield]: https://img.shields.io/github/issues/orkim/megahal.mod.svg?style=for-the-badge
[issues-url]: https://github.com/orkim/megahal.mod/issues
[license-shield]: https://img.shields.io/github/license/orkim/megahal.mod.svg?style=for-the-badge
[license-url]: https://github.com/orkim/megahal.mod/blob/main/LICENSE.txt
