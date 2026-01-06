.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final blacklist GET_INKEY_NO:B = 0x0t

.field protected static final blacklist GET_INKEY_YES:B = 0x1t


# instance fields
.field private blacklist mDuration:B

.field public blacklist mInData:Ljava/lang/String;

.field private blacklist mIsDuration:Z

.field private blacklist mIsPacked:Z

.field private blacklist mIsUcs2:Z

.field private blacklist mIsYesNo:Z

.field private blacklist mTimeUnit:B

.field private blacklist mYesNoResponse:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/Duration;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 119
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 120
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsDuration:Z

    .line 123
    iget-object v0, p1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mTimeUnit:B

    .line 124
    iget p1, p1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mDuration:B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 99
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 100
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 111
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 134
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsDuration:Z

    if-ne v3, v2, :cond_1

    .line 135
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    .line 136
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 139
    iget-byte v3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mTimeUnit:B

    .line 140
    iget-byte p0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mDuration:B

    add-int/2addr p0, v2

    int-to-byte p0, p0

    new-array v4, v0, [B

    aput-byte v3, v4, v1

    aput-byte p0, v4, v2

    .line 141
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    if-ge v1, v0, :cond_9

    .line 142
    aget-byte p0, v4, v1

    .line 143
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/2addr v1, v2

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 148
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 152
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v0, :cond_2

    .line 154
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    new-array v3, v2, [B

    aput-byte v0, v3, v1

    goto :goto_2

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 159
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v3, "UTF-16BE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_1
    move-object v3, v0

    goto :goto_2

    .line 162
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 164
    invoke-static {v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v0

    .line 169
    array-length v3, v0

    sub-int/2addr v3, v2

    new-array v3, v3, [B

    .line 170
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 177
    :catch_0
    new-array v3, v1, [B

    goto :goto_2

    .line 175
    :catch_1
    new-array v3, v1, [B

    goto :goto_2

    .line 180
    :cond_5
    new-array v3, v1, [B

    .line 190
    :goto_2
    array-length v0, v3

    add-int/2addr v0, v2

    const/16 v4, 0xff

    if-gt v0, v4, :cond_6

    .line 191
    array-length v0, v3

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_3

    .line 193
    :cond_6
    new-array v3, v1, [B

    .line 198
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v0, :cond_7

    const/16 p0, 0x8

    .line 199
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 200
    :cond_7
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz p0, :cond_8

    .line 201
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_8
    const/4 p0, 0x4

    .line 203
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 206
    :goto_4
    array-length p0, v3

    :goto_5
    if-ge v1, p0, :cond_9

    aget-byte v0, v3, v1

    .line 207
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/2addr v1, v2

    goto :goto_5

    :cond_9
    :goto_6
    return-void
.end method
