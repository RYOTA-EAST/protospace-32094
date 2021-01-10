# テーブル
## users テーブル
| column      | Type    | options   |
|-------------|---------------------|
| email       | string  | NOT NULL  |
| password    | string  | NOT NULL  |
| name        | string  | NOT NULL  |
| profile     | text    | NOT NULL  |
| occupation  | text    | NOT NULL  |
| position    | text    | NOT NULL  |

### Association

- has_many :prototypes
- has_many :comments

## prototype テーブル
| column      | Type          | options   |
|-------------|---------------|-----------|
| title       | string        | NOT NULL  |
| catch_copy  | text          | NOT NULL  |
| concept     | text          | NOT NULL  |
| image       | ActiveStorage |           |
| user        | references    |           |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル
| column     | Type        | options   |
|------------|-------------|-----------|
| text       | text        | NOT NULL  |
| user       | references  |           |
| prototype  | references  |           |

### Association

- belongs_to :user
- belongs_to :prototype