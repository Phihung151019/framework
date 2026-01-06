.class public Lcom/android/internal/telephony/WapPushMessage;
.super Ljava/lang/Object;
.source "WapPushMessage.java"


# static fields
.field public static final blacklist ATTRIBUTE_VALUE_TOKEN_COM:I = 0x85

.field public static final blacklist ATTRIBUTE_VALUE_TOKEN_EDU:I = 0x86

.field public static final blacklist ATTRIBUTE_VALUE_TOKEN_NET:I = 0x87

.field public static final blacklist ATTRIBUTE_VALUE_TOKEN_ORG:I = 0x88

.field public static final blacklist CONTENT_MIME_TYPE_B_PUSH_SI:Ljava/lang/String; = "application/vnd.wap.sic"

.field public static final blacklist CONTENT_MIME_TYPE_B_PUSH_SL:Ljava/lang/String; = "application/vnd.wap.slc"

.field public static final blacklist GLOBAL_TOKEN_END:I = 0x1

.field public static final blacklist GLOBAL_TOKEN_STR_I:I = 0x3

.field public static final blacklist GLOBAL_TOKEN_STR_T:I = 0x83

.field public static final blacklist PREFIX_DEFAULT:Ljava/lang/String; = "http://"

.field public static final blacklist PREFIX_HTTP:Ljava/lang/String; = "http://"

.field public static final blacklist PREFIX_HTTPS:Ljava/lang/String; = "https://"

.field public static final blacklist PREFIX_HTTPS_WWW:Ljava/lang/String; = "https://www."

.field public static final blacklist PREFIX_HTTP_WWW:Ljava/lang/String; = "http://www."

.field public static final blacklist PUBLIC_ID_SI_1_0:I = 0x5

.field public static final blacklist PUBLIC_ID_SL_1_0:I = 0x6

.field public static final blacklist SL_ATTRIBUTE_START_TOKEN_ACTION_CACHE:I = 0x7

.field public static final blacklist SL_ATTRIBUTE_START_TOKEN_ACTION_EXECUTE_HIGH:I = 0x6

.field public static final blacklist SL_ATTRIBUTE_START_TOKEN_ACTION_EXECUTE_LOW:I = 0x5

.field public static final blacklist SL_ATTRIBUTE_START_TOKEN_HREF:I = 0x8

.field public static final blacklist SL_ATTRIBUTE_START_TOKEN_HREF_HTTP:I = 0x9

.field public static final blacklist SL_ATTRIBUTE_START_TOKEN_HREF_HTTPS:I = 0xb

.field public static final blacklist SL_ATTRIBUTE_START_TOKEN_HREF_HTTPS_WWW:I = 0xc

.field public static final blacklist SL_ATTRIBUTE_START_TOKEN_HREF_HTTP_WWW:I = 0xa

.field public static final blacklist SL_PRIORITY_ACTION_CACHE:I = 0x3

.field public static final blacklist SL_PRIORITY_ACTION_EXECUTE_HIGH:I = 0x1

.field public static final blacklist SL_PRIORITY_ACTION_EXECUTE_LOW:I = 0x2

.field public static final blacklist VALUE_COM:Ljava/lang/String; = ".com/"

.field public static final blacklist VALUE_EDU:Ljava/lang/String; = ".edu/"

.field public static final blacklist VALUE_NET:Ljava/lang/String; = ".net/"

.field public static final blacklist VALUE_ORG:Ljava/lang/String; = ".org/"


# instance fields
.field private blacklist encodingCharsetName:Ljava/lang/String;

.field private blacklist in:Ljava/io/ByteArrayInputStream;

.field private blacklist mAction:I

.field private blacklist mCreated:J

.field private blacklist mHref:Ljava/lang/String;

.field private blacklist mPublicId:I

.field private blacklist mSiExpires:J

.field private blacklist mSiId:Ljava/lang/String;

.field private blacklist mText:Ljava/lang/String;

.field private blacklist mWbxmlVersion:I

.field private blacklist stringTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 613
    iput v0, p0, Lcom/android/internal/telephony/WapPushMessage;->mWbxmlVersion:I

    .line 614
    iput v0, p0, Lcom/android/internal/telephony/WapPushMessage;->mPublicId:I

    const/4 v1, 0x0

    .line 615
    iput-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->mHref:Ljava/lang/String;

    .line 616
    iput v0, p0, Lcom/android/internal/telephony/WapPushMessage;->mAction:I

    const-wide/16 v2, -0x1

    .line 617
    iput-wide v2, p0, Lcom/android/internal/telephony/WapPushMessage;->mCreated:J

    .line 618
    iput-wide v2, p0, Lcom/android/internal/telephony/WapPushMessage;->mSiExpires:J

    .line 619
    iput-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->mSiId:Ljava/lang/String;

    .line 620
    iput-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->mText:Ljava/lang/String;

    .line 621
    iput-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    .line 622
    iput-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    .line 623
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    return-void
.end method

.method private static blacklist hasProtocol(Ljava/lang/String;)Z
    .locals 1

    .line 715
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private blacklist parseSLAttr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readByte()I

    move-result v1

    :cond_0
    if-ne v1, v0, :cond_1

    return-void

    .line 730
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseSLAttr token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WapPushMessage"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v2, "http://"

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 780
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported attribute. attribute= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 772
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 774
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v2

    .line 777
    const-string v3, "https://www."

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->mHref:Ljava/lang/String;

    :goto_2
    move v1, v2

    :goto_3
    move v2, v4

    goto :goto_1

    .line 764
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 766
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v2

    .line 769
    const-string v3, "https://"

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->mHref:Ljava/lang/String;

    goto :goto_2

    .line 756
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 758
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v2

    .line 761
    const-string v3, "http://www."

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->mHref:Ljava/lang/String;

    goto :goto_2

    .line 748
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 750
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v3

    .line 753
    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->mHref:Ljava/lang/String;

    move v1, v3

    goto :goto_3

    .line 738
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 739
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v5

    .line 741
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/WapPushMessage;->hasProtocol(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 742
    const-string v6, "WAP Sl message uses default protocol"

    invoke-static {v3, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->mHref:Ljava/lang/String;

    move v2, v4

    move v1, v5

    goto/16 :goto_1

    .line 735
    :pswitch_5
    iput v1, p0, Lcom/android/internal/telephony/WapPushMessage;->mAction:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist parseTag(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    .line 704
    iget p1, p0, Lcom/android/internal/telephony/WapPushMessage;->mPublicId:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 707
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->parseSLAttr()V

    return-void

    .line 709
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported operation. publicId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/WapPushMessage;->mPublicId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    iget-object p0, p0, Lcom/android/internal/telephony/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 788
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unexpected EOF."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 797
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readByte()I

    move-result v1

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    return v0
.end method

.method private blacklist readString(Ljava/lang/StringBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 804
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readByte()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x83

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return v0

    .line 835
    :pswitch_0
    const-string v0, ".org/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 832
    :pswitch_1
    const-string v0, ".net/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 829
    :pswitch_2
    const-string v0, ".edu/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 826
    :pswitch_3
    const-string v0, ".com/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 822
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readInt()I

    move-result v0

    .line 823
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 808
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 810
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readByte()I

    move-result v1

    if-nez v1, :cond_2

    .line 813
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 817
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getHref()Ljava/lang/String;
    .locals 0

    .line 843
    iget-object p0, p0, Lcom/android/internal/telephony/WapPushMessage;->mHref:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist parse([B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 626
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    .line 627
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readByte()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/WapPushMessage;->mWbxmlVersion:I

    .line 629
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/WapPushMessage;->mPublicId:I

    .line 631
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readInt()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x6a

    if-ne p1, v1, :cond_0

    .line 640
    const-string p1, "UTF-8"

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 643
    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported encoding charset. charset= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 637
    :cond_1
    const-string p1, "ISO-8859-1"

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 634
    :cond_2
    const-string p1, "US-ASCII"

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    .line 646
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readInt()I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v1

    move-object v4, v2

    :goto_1
    if-ge v3, p1, :cond_5

    if-nez v4, :cond_3

    .line 651
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v5, v3

    .line 654
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readByte()I

    move-result v6

    if-nez v6, :cond_4

    .line 656
    iget-object v6, p0, Lcom/android/internal/telephony/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v9, p0, Lcom/android/internal/telephony/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    goto :goto_2

    .line 660
    :cond_4
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 663
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 665
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 693
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 694
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushMessage;->mText:Ljava/lang/String;

    :cond_7
    return-void

    :cond_8
    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    if-eq v2, v0, :cond_a

    const/16 v3, 0x83

    if-eq v2, v3, :cond_9

    .line 690
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/WapPushMessage;->parseTag(I)V

    goto :goto_3

    .line 686
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readInt()I

    move-result v2

    .line 687
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 673
    :cond_a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 675
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushMessage;->readByte()I

    move-result v3

    if-nez v3, :cond_b

    .line 677
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 681
    :cond_b
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 697
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 699
    throw p0
.end method
