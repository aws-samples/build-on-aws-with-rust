# build-on-aws-with-rust

This repository houses resources that are referenced by the talk
"Build on AWS with Rust" (BUI06) for the AWS Summit Sydney 2023
by Tim McNamara ([@timClicks](https://github.com/timClicks)).

## Directory layout

 - `examples`: examples of code that is discussed within the talks slides
 - `serverless-compare-langs`: 5 implementations of an ecommerce application, one per language


### `serverless-compare-langs` 

The code within these directories is sourced from AWS repositories via the `sit subtree` command:

| Directory                                | Upstream repository                                        |
| ---------                                | -------------------                                        |
| `serverless-compare-langs/go`            | https://github.com/aws-samples/serverless-go-demo          |
| `serverless-compare-langs/java-graalvm`  | https://github.com/aws-samples/serverless-graalvm-demo     |
| `serverless-compare-langs/kotlin`        | https://github.com/aws-samples/serverless-kotlin-demo      |
| `serverless-compare-langs/rust`          | https://github.com/aws-samples/serverless-rust-demo        |
| `serverless-compare-langs/typescript`    | https://github.com/aws-samples/serverless-typescript-demo  |

The upstream repositories have had slight customizations to enable them to be deployed concurrently.

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

<!--

## Suggestions for a good README
Every project is different, so consider which of these sections apply to yours. The sections used in the template are suggestions for most open source projects. Also keep in mind that while a README can be too long and detailed, too long is better than too short. If you think your README is too long, consider utilizing another form of documentation rather than cutting out information.

## Badges
On some READMEs, you may see small images that convey metadata, such as whether or not all the tests are passing for the project. You can use Shields to add some to your README. Many services also have instructions for adding a badge.

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.

## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.

-->