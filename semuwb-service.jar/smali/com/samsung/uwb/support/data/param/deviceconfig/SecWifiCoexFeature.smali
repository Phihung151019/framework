.class public Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "SecWifiCoexFeature.java"


# static fields
.field private static final FEATURE_SETTING_DISABLE_COEX:I = 0x0

.field private static final FEATURE_SETTING_ENABLE_COEX_WITHOUT_DEBUGGING_AND_WARNING_VERBOSITY:I = 0x1

.field private static final FEATURE_SETTING_ENABLE_COEX_WITH_DEBUGGING_AND_WARNING_VERBOSITY:I = 0x4

.field private static final FEATURE_SETTING_ENABLE_COEX_WITH_DEBUGGING_VERBOSITY:I = 0x2

.field private static final FEATURE_SETTING_ENABLE_COEX_WITH_WARNING_VERBOSITY:I = 0x3

.field private static final FEATURE_SETTING_USE_GPIO_SIGNALING_SCHEME:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SEC_WIFI_COEX_FEATURE"


# instance fields
.field private final featureSetting:I

.field private final numOfChannels:I

.field private final settingForChannels:[I


# direct methods
.method public constructor <init>(BI[B)V
    .locals 5
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 26
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 27
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->featureSetting:I

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->numOfChannels:I

    .line 29
    iget v1, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->numOfChannels:I

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->settingForChannels:[I

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->numOfChannels:I

    if-ge v1, v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->settingForChannels:[I

    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v3

    .line 32
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->settingForChannels:[I

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v3

    .line 33
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->settingForChannels:[I

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v3

    .line 34
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->settingForChannels:[I

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v3

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 40
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 41
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 42
    iget v1, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->featureSetting:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_0

    .line 59
    const-string v1, "Invalid value"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 56
    :pswitch_0
    const-string v1, "Enable w/ debugging and warning verbosity"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 57
    goto :goto_0

    .line 53
    :pswitch_1
    const-string v1, "Enable w/ warning verbosity"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 54
    goto :goto_0

    .line 50
    :pswitch_2
    const-string v1, "Enable w/ debugging verbosity"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 51
    goto :goto_0

    .line 47
    :pswitch_3
    const-string v1, "Enable w/o debugging and warning verbosity"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 48
    goto :goto_0

    .line 44
    :pswitch_4
    const-string v1, "Disable"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 45
    nop

    .line 62
    :goto_0
    iget v1, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->featureSetting:I

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_1

    .line 67
    iget v1, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->featureSetting:I

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Use reserved signaling scheme %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 64
    :pswitch_5
    const-string v1, "Use GPIO signaling scheme"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 65
    nop

    .line 70
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->numOfChannels:I

    if-ge v1, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->settingForChannels:[I

    mul-int/lit8 v3, v1, 0x4

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Channel number: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 72
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->settingForChannels:[I

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "MIN_GUARD_DURATION: %d ms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 73
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->settingForChannels:[I

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "MAX_GRANT_DURATION: %d ms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 74
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;->settingForChannels:[I

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ADVANNCED_GRANT_DURATION: %d ms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    .end local v1    # "i":I
    :cond_0
    const-string v1, "SEC_WIFI_COEX_FEATURE"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
