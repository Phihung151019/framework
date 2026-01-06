.class public Lcom/sec/esecomm/BerTLVObject;
.super Ljava/lang/Object;
.source "BerTLVObject.java"


# static fields
.field public static final blacklist TAG_APPLET_STATE:B = -0x76t

.field public static final blacklist TAG_MISC_INFO:B = -0x3dt

.field public static final blacklist TAG_RETRY_COUNT:B = -0x3et


# instance fields
.field private blacklist mTag:I

.field private blacklist mTagLen:I

.field private blacklist mValue:[B

.field private blacklist mValueLen:I

.field private blacklist mValueLenLen:I


# direct methods
.method protected constructor blacklist <init>(IIII[BI)V
    .locals 3
    .param p1, "tagVal"    # I
    .param p2, "tagLen"    # I
    .param p3, "valueLen"    # I
    .param p4, "valueLenLen"    # I
    .param p5, "valueData"    # [B
    .param p6, "offset"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/sec/esecomm/BerTLVObject;->mTag:I

    .line 48
    iput p2, p0, Lcom/sec/esecomm/BerTLVObject;->mTagLen:I

    .line 49
    iput p3, p0, Lcom/sec/esecomm/BerTLVObject;->mValueLen:I

    .line 50
    iput p4, p0, Lcom/sec/esecomm/BerTLVObject;->mValueLenLen:I

    .line 51
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/sec/esecomm/BerTLVObject;->mValue:[B

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 53
    iget-object v1, p0, Lcom/sec/esecomm/BerTLVObject;->mValue:[B

    add-int v2, p6, v0

    aget-byte v2, p5, v2

    aput-byte v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getTag()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/sec/esecomm/BerTLVObject;->mTag:I

    return v0
.end method

.method public blacklist getTagLen()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/sec/esecomm/BerTLVObject;->mTagLen:I

    return v0
.end method

.method public blacklist getValue()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sec/esecomm/BerTLVObject;->mValue:[B

    return-object v0
.end method

.method public blacklist getValueLen()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/sec/esecomm/BerTLVObject;->mValueLen:I

    return v0
.end method

.method public blacklist getValueLenLen()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/sec/esecomm/BerTLVObject;->mValueLenLen:I

    return v0
.end method
