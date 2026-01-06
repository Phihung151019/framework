.class Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;
.super Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;
.source "NightAdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NightSessionProcessor"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iget-object v0, p1, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;->TAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    iget-object p1, p1, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;-><init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected isProcessingCapture(Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;)Z
    .locals 6
    .param p1, "dynamicShotInfo"    # Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;

    .line 118
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotMode()I

    move-result v0

    .line 119
    .local v0, "dynamicShotMode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 120
    sparse-switch v0, :sswitch_data_0

    .line 160
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 160
    const-string v5, "dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v2

    .line 149
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    move-result-object v3

    const-string v4, "image_enhance"

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Multi Capture, SIE_LIB"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v1

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 154
    const-string v5, "SIE_LIB dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v2

    .line 138
    :sswitch_1
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    move-result-object v3

    const-string v4, "high_res"

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Multi Capture, Lite"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v1

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 143
    const-string v5, "Lite dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v2

    .line 127
    :sswitch_2
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    move-result-object v3

    const-string v4, "hifills"

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Multi Capture, HIFI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v1

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 132
    const-string v5, "HIFI dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v2

    .line 165
    :cond_3
    nop

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotExtraInfo()I

    move-result v3

    .line 165
    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/vendor/SecCameraMetadata;->getDynamicShotExtraInfoNeedLtm(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Single Capture, LTM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v1

    .line 170
    :cond_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x64 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
