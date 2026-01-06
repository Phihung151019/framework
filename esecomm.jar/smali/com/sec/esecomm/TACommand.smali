.class public Lcom/sec/esecomm/TACommand;
.super Ljava/lang/Object;
.source "TACommand.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "TACommand"


# instance fields
.field final blacklist HEX_ARRAY:[C

.field protected blacklist mCmdId:I

.field protected blacklist mData:[B

.field protected blacklist mDataLen:I

.field protected blacklist mMagicNum:I

.field protected blacklist mVersion:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/sec/esecomm/TACommand;->HEX_ARRAY:[C

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/esecomm/TACommand;->mCmdId:I

    .line 28
    iput v0, p0, Lcom/sec/esecomm/TACommand;->mMagicNum:I

    .line 29
    iput v0, p0, Lcom/sec/esecomm/TACommand;->mVersion:I

    .line 30
    iput v0, p0, Lcom/sec/esecomm/TACommand;->mDataLen:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/esecomm/TACommand;->mData:[B

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(IIII[B)V
    .locals 1
    .param p1, "cmdId"    # I
    .param p2, "magicNum"    # I
    .param p3, "version"    # I
    .param p4, "len"    # I
    .param p5, "data"    # [B

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/sec/esecomm/TACommand;->HEX_ARRAY:[C

    .line 35
    iput p1, p0, Lcom/sec/esecomm/TACommand;->mCmdId:I

    .line 36
    iput p2, p0, Lcom/sec/esecomm/TACommand;->mMagicNum:I

    .line 37
    iput p3, p0, Lcom/sec/esecomm/TACommand;->mVersion:I

    .line 38
    iput p4, p0, Lcom/sec/esecomm/TACommand;->mDataLen:I

    .line 39
    iput-object p5, p0, Lcom/sec/esecomm/TACommand;->mData:[B

    .line 40
    return-void
.end method

.method private blacklist bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .line 80
    if-nez p1, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 84
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 85
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 86
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/sec/esecomm/TACommand;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 87
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/esecomm/TACommand;->HEX_ARRAY:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 84
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "j":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public blacklist getCmdId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/sec/esecomm/TACommand;->mCmdId:I

    return v0
.end method

.method public blacklist getData()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sec/esecomm/TACommand;->mData:[B

    return-object v0
.end method

.method public blacklist getDataLen()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/sec/esecomm/TACommand;->mDataLen:I

    return v0
.end method

.method public blacklist getMagicNum()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/sec/esecomm/TACommand;->mMagicNum:I

    return v0
.end method

.method public blacklist getVersion()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/sec/esecomm/TACommand;->mVersion:I

    return v0
.end method

.method public blacklist setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 63
    iput-object p1, p0, Lcom/sec/esecomm/TACommand;->mData:[B

    .line 64
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TACommand -> mCmdId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/esecomm/TACommand;->mCmdId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMagicNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/esecomm/TACommand;->mMagicNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/esecomm/TACommand;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDataLen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/esecomm/TACommand;->mDataLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/esecomm/TACommand;->mData:[B

    .line 73
    invoke-direct {p0, v1}, Lcom/sec/esecomm/TACommand;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method
