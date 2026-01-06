.class Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;
.super Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;
.source "HdrAdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdrSessionProcessor"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender;)V
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
    iget-object v0, p1, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender;->TAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    iget-object p1, p1, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

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

    if-eqz v0, :cond_5

    .line 120
    sparse-switch v0, :sswitch_data_0

    .line 196
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 196
    const-string v5, "dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v2

    .line 185
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    move-result-object v3

    const-string v4, "aebhdr"

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Multi Capture, AEB_HDR"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v1

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 190
    const-string v5, "AEB_HDR dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v2

    .line 173
    :sswitch_1
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    move-result-object v3

    const-string v4, "image_enhance"

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Multi Capture, SIE_LIB"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v1

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 178
    const-string v5, "SIE_LIB dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v2

    .line 161
    :sswitch_2
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    move-result-object v3

    const-string v4, "high_res"

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Multi Capture, Lite"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v1

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 166
    const-string v5, "Lite dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v2

    .line 150
    :sswitch_3
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    move-result-object v3

    const-string v4, "llhdr"

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Multi Capture, LLHDR"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v1

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 155
    const-string v5, "LLHDR dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v2

    .line 130
    :sswitch_4
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    move-result-object v3

    const-string v4, "mfhdr"

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Multi Capture, MFHDR"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v1

    .line 135
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 135
    const-string v5, "MFHDR dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v2

    .line 201
    :cond_5
    nop

    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotExtraInfo()I

    move-result v3

    .line 201
    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/vendor/SecCameraMetadata;->getDynamicShotExtraInfoNeedLtm(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 203
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender$HdrSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Single Capture, LTM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v1

    .line 206
    :cond_6
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1a -> :sswitch_4
        0x1c -> :sswitch_4
        0x1d -> :sswitch_4
        0x1e -> :sswitch_3
        0x1f -> :sswitch_3
        0x20 -> :sswitch_3
        0x21 -> :sswitch_3
        0x22 -> :sswitch_3
        0x23 -> :sswitch_3
        0x25 -> :sswitch_3
        0x26 -> :sswitch_3
        0x27 -> :sswitch_3
        0x3c -> :sswitch_3
        0x65 -> :sswitch_2
        0x79 -> :sswitch_1
        0x7a -> :sswitch_1
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method
