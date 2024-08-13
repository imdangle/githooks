# **Conventional-Commit (Quy định commit GitHub)**

#### Hiểu về Conventional Commit

Conventional Commit là một quy ước về cách viết các thông điệp commit, giúp tự động hóa việc tạo ra changelog, quản lý các phiên bản và hỗ trợ các công cụ như semantic-release.

Cấu trúc cơ bản của một conventional commit:

``` 
<type>(<scope>): <subject>

<body>

<footer>
```

- type: Loại thay đổi (ví dụ: feat, fix, docs, style, refactor, test, chore)
- scope: Phạm vi thay đổi (tùy chọn, ví dụ: login, user, database)
- subject: Mô tả ngắn gọn về thay đổi
- body: Mô tả chi tiết hơn (tùy chọn)
- footer: Thông tin bổ sung (ví dụ: BREAKING CHANGE, v.v)

Dưới đây là một số ví dụ về cách sử dụng conventional commits áp dụng cho **commit code và pull-requests**:

1. Thêm tính năng mới:
    > feat(user): Thêm trường địa chỉ vào profile người dùng

2. Sửa lỗi:
    > fix(login): Sửa lỗi đăng nhập khi mật khẩu có ký tự đặc biệt

3. Cập nhật tài liệu:
    > docs(readme): Cập nhật hướng dẫn cài đặt

4. Thay đổi code không ảnh hưởng đến chức năng:
    > refactor(component): Tái cấu trúc component Button để tăng khả năng tái sử dụng

5. Thêm test case:
    > test(api): Thêm test case cho API lấy danh sách sản phẩm


## Commit/ Pull request types

| Commit Type | Title                    | Description                                                                                                 | Emoji | Release                        | Include in changelog |
|:-----------:|--------------------------|-------------------------------------------------------------------------------------------------------------|:-----:|--------------------------------|:--------------------:|
|   `feat`    | Features                 | A new feature                                                                                               |   ✨   | `minor`                        |        `true`        |
|    `fix`    | Bug Fixes                | A bug Fix                                                                                                   |  🐛   | `patch`                        |        `true`        |
|   `docs`    | Documentation            | Documentation only changes                                                                                  |  📚   | `patch` if `scope` is `readme` |        `true`        |
|   `style`   | Styles                   | Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)      |  💎   | -                              |        `true`        |
| `refactor`  | Code Refactoring         | A code change that neither fixes a bug nor adds a feature                                                   |  📦   | -                              |        `true`        |
|   `perf`    | Performance Improvements | A code change that improves performance                                                                     |  🚀   | `patch`                        |        `true`        |
|   `test`    | Tests                    | Adding missing tests or correcting existing tests                                                           |  🚨   | -                              |        `true`        |
|   `build`   | Builds                   | Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)         |  🛠   | `patch`                        |        `true`        |
|    `ci`     | Continuous Integrations  | Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs) |  ⚙️   | -                              |        `true`        |
|   `chore`   | Chores                   | Other changes that don't modify src or test files                                                           |  ♻️   | -                              |        `true`        |
|  `revert`   | Reverts                  | Reverts a previous commit                                                                                   |  🗑   | -                              |        `true`        |

