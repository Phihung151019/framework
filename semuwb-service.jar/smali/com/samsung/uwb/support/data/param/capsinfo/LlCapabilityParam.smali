.class public Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "LlCapabilityParam.java"


# static fields
.field private static final LL_AGGREGATED_FRAME_SUPPORT_MASK:B = 0x2t

.field private static final LL_FEATURE_SUPPORT_MASK:B = 0x1t

.field private static final NON_SECURE_ENDPOINT_SUPPORT_MASK:B = 0x8t

.field private static final SECURE_ENDPOINTSUPPORT_MASK:B = 0x4t

.field public static final TAG:Ljava/lang/String; = "LL_CAPABILITY_PARAM"


# instance fields
.field private final llCapabilityParamMaxNum:B

.field private final llCapabilityParamSupport:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 23
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;->llCapabilityParamSupport:B

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;->llCapabilityParamMaxNum:B

    .line 26
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 30
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    .local v0, "description":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;->llCapabilityParamSupport:B

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const-string v3, "LL_CAPABILITY_PARAM"

    if-eq v1, v2, :cond_0

    .line 32
    const-string v1, " LL: Not support "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 33
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v3, v1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 36
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;->llCapabilityParamSupport:B

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 37
    const-string v1, " LL Aggregated Frame: Support"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 39
    :cond_1
    const-string v1, " LL Aggregated Frame: Not support"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 41
    :goto_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;->llCapabilityParamSupport:B

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 42
    const-string v1, " Secure Endpoint: Support"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 44
    :cond_2
    const-string v1, " Secure Endpoint: Not support"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 46
    :goto_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;->llCapabilityParamSupport:B

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    .line 47
    const-string v1, " Non Secure Endpoint: Support"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    .line 49
    :cond_3
    const-string v1, " Non Secure Endpoint: Not support"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 52
    :goto_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;->llCapabilityParamMaxNum:B

    and-int/lit8 v1, v1, 0xf

    .line 53
    .local v1, "maxNumberOfLogicalLinksSupportedInUwbs":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " Max number of logical links supported in UWBS: %d "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 55
    iget-byte v4, p0, Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;->llCapabilityParamMaxNum:B

    shr-int/lit8 v2, v4, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 56
    .local v2, "maxNumberOfLogicalLinksSupportedPerSession":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " Max number of logical links supported per session: %d "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 58
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v3, v4}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
