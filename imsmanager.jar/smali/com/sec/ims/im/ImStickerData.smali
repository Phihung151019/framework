.class public Lcom/sec/ims/im/ImStickerData;
.super Ljava/lang/Object;
.source "ImStickerData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/im/ImStickerData;",
            ">;"
        }
    .end annotation
.end field

.field private static final contentType:Ljava/lang/String; = "application/vnd.gsma.rcs-sticker+xml"

.field private static final innerUri:Ljava/lang/String; = "content://com.samsung.rcs.im/getstickerfile/"


# instance fields
.field private isSticker:Z

.field private mStickerId:Ljava/lang/String;

.field private mStickerItemId:Ljava/lang/String;

.field private mStickerItemName:Ljava/lang/String;

.field private mStickerItemThumbnailUri:Ljava/lang/String;

.field private mStickerItemThumbnailUrl:Ljava/lang/String;

.field private mStickerItemUri:Ljava/lang/String;

.field private mStickerItemUrl:Ljava/lang/String;

.field private mStickerName:Ljava/lang/String;

.field private mStickerNums:Ljava/lang/String;

.field private mStickerThumbnail:Ljava/lang/String;

.field private mStickerUntil:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 431
    new-instance v0, Lcom/sec/ims/im/ImStickerData$1;

    invoke-direct {v0}, Lcom/sec/ims/im/ImStickerData$1;-><init>()V

    sput-object v0, Lcom/sec/ims/im/ImStickerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 85
    const-string v0, "content://com.samsung.rcs.im/getstickerfile/"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    .line 90
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 94
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const-string v2, ""

    :goto_0
    const/4 v3, 0x1

    if-eq p1, v3, :cond_9

    const/4 v3, 0x2

    .line 97
    const-string v4, "thumbnail"

    const-string v5, "name"

    const/4 v6, 0x0

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    goto :goto_2

    :cond_0
    if-nez v2, :cond_1

    goto :goto_2

    .line 120
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    goto :goto_2

    .line 125
    :cond_3
    const-string v3, "nums"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 126
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v2, v6

    goto :goto_2

    .line 101
    :cond_5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 102
    const-string v2, "set"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "id"

    if-eqz v2, :cond_6

    .line 103
    :try_start_2
    invoke-interface {v1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    .line 104
    const-string v2, "until"

    invoke-interface {v1, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    goto :goto_1

    .line 105
    :cond_6
    const-string v2, "item"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 106
    invoke-interface {v1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    .line 107
    invoke-interface {v1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    .line 108
    const-string v2, "url"

    invoke-interface {v1, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    .line 109
    invoke-interface {v1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    :cond_7
    :goto_1
    move-object v2, p1

    .line 130
    :cond_8
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    .line 132
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/ims/im/ImStickerData;->urlToUriParser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/ims/im/ImStickerData;->urlToUriParser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    .line 134
    iput-boolean v3, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p0

    .line 136
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    .line 75
    iput-object p7, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    .line 76
    iput-object p8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    .line 77
    iput-object p9, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    return-void
.end method

.method public static getContentType()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "application/vnd.gsma.rcs-sticker+xml"

    return-object v0
.end method

.method private urlToUriParser(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 p0, 0x2

    const/4 v0, 0x1

    .line 145
    const-string v1, ""

    if-nez p1, :cond_0

    return-object v1

    .line 148
    :cond_0
    const-string v2, "[?&=]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 153
    array-length v2, p1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    .line 154
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 155
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "type"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v6, p0

    goto :goto_1

    :sswitch_1
    const-string v7, "file"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v6, v0

    goto :goto_1

    :sswitch_2
    const-string v7, "folder"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 163
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    .line 160
    aget-object v2, p1, v2

    goto :goto_2

    :pswitch_2
    add-int/lit8 v1, v4, 0x1

    .line 157
    aget-object v1, p1, v1

    :goto_2
    add-int/2addr v4, p0

    goto :goto_0

    .line 171
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ba2e392 -> :sswitch_2
        0x2ff57c -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getStickerId()Ljava/lang/String;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerItemId()Ljava/lang/String;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerItemName()Ljava/lang/String;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerItemThumbnailUri()Ljava/lang/String;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerItemThumbnailUrl()Ljava/lang/String;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerItemUri()Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerItemUrl()Ljava/lang/String;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerName()Ljava/lang/String;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerNums()Ljava/lang/String;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerThumbnail()Ljava/lang/String;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerUntil()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    return-object p0
.end method

.method public isSticker()Z
    .locals 0

    .line 366
    iget-boolean p0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    return p0
.end method

.method public setSticker(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    return-void
.end method

.method public setStickerId(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemId(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemName(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemThumbnailUri(Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemUri(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemUrl(Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    return-void
.end method

.method public setStickerName(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    return-void
.end method

.method public setStickerNums(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    return-void
.end method

.method public setStickerThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    return-void
.end method

.method public setStickerUntil(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImStickerData [mStickerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerUntil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerItemName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerItemUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerItemThumbnailUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerItemUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerItemThumbnailUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 405
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    iget-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    iget-boolean p0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
