.class public Lcom/android/server/ssrm/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static CHIP_EXYNOS2100:Z = false

.field public static CHIP_EXYNOS2200:Z = false

.field public static CHIP_LHOTSE:Z = false

.field public static CHIP_SDM8250:Z = false

.field public static CHIP_SDM8350:Z = false

.field public static CHIP_SDM8450:Z = false

.field static final DEBUG:Z = false

.field public static DISABLE_HEAVYUSER:Z

.field public static DVFS_FILENAME:Ljava/lang/String;

.field public static DVFS_FILENAME_DEFAULT:Ljava/lang/String;

.field public static PRODUCT_A32:Z

.field public static PRODUCT_A32XJPN:Z

.field public static PRODUCT_A52xq:Z

.field public static PRODUCT_A55x:Z

.field public static PRODUCT_A56X:Z

.field public static PRODUCT_A82:Z

.field public static PRODUCT_B2Q:Z

.field public static PRODUCT_B4Q:Z

.field public static PRODUCT_B5Q:Z

.field public static PRODUCT_B6Q:Z

.field public static PRODUCT_B7R:Z

.field public static PRODUCT_BLOOMQ:Z

.field public static PRODUCT_BLOOMxq:Z

.field public static PRODUCT_C1Q:Z

.field public static PRODUCT_C1S:Z

.field public static PRODUCT_C2Q:Z

.field public static PRODUCT_C2S:Z

.field public static PRODUCT_EUREKAQ:Z

.field public static PRODUCT_EUREKAS:Z

.field public static PRODUCT_F62:Z

.field public static PRODUCT_M33X:Z

.field public static PRODUCT_O1:Z

.field public static PRODUCT_O1Q:Z

.field public static PRODUCT_O1S:Z

.field public static PRODUCT_P3:Z

.field public static PRODUCT_P3Q:Z

.field public static PRODUCT_P3S:Z

.field public static PRODUCT_PALETTE:Z

.field public static PRODUCT_PALETTEQ:Z

.field public static PRODUCT_PALETTES:Z

.field public static PRODUCT_PARADIGM:Z

.field public static PRODUCT_Q2Q:Z

.field public static PRODUCT_Q4Q:Z

.field public static PRODUCT_Q7MQ:Z

.field public static PRODUCT_Q7Q:Z

.field public static PRODUCT_R8q:Z

.field public static PRODUCT_R8s:Z

.field public static PRODUCT_R9Q:Z

.field public static PRODUCT_RAINBOW:Z

.field public static PRODUCT_RAINBOWQ:Z

.field public static PRODUCT_RAINBOWS:Z

.field public static PRODUCT_T2:Z

.field public static PRODUCT_T2Q:Z

.field public static PRODUCT_T2S:Z

.field public static PRODUCT_TOP:Z

.field public static PRODUCT_WINNERQ:Z

.field public static PRODUCT_X1Q:Z

.field public static PRODUCT_X1S:Z

.field public static PRODUCT_Y2Q:Z

.field public static PRODUCT_Y2S:Z

.field public static PRODUCT_Z3Q:Z

.field public static PRODUCT_Z3S:Z

.field public static SSRM_FILENAME:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field public static VENDOR_JDM:Z

.field private static final sSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    const-string v0, "ssrm_default"

    const-class v1, Lcom/android/server/ssrm/Feature;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Feature;->TAG:Ljava/lang/String;

    .line 37
    const-string v1, ""

    sput-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 39
    sput-object v1, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    .line 41
    const-string v1, "dvfs_policy_default,"

    sput-object v1, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME_DEFAULT:Ljava/lang/String;

    .line 43
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Feature;->sSalesCode:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2100:Z

    .line 47
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2200:Z

    .line 49
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->CHIP_SDM8250:Z

    .line 51
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->CHIP_SDM8350:Z

    .line 53
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->CHIP_SDM8450:Z

    .line 55
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->CHIP_LHOTSE:Z

    .line 57
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A32XJPN:Z

    .line 59
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A32:Z

    .line 61
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->VENDOR_JDM:Z

    .line 63
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A52xq:Z

    .line 65
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A55x:Z

    .line 67
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A56X:Z

    .line 69
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_WINNERQ:Z

    .line 71
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMQ:Z

    .line 73
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMxq:Z

    .line 75
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_X1Q:Z

    .line 77
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_X1S:Z

    .line 79
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2Q:Z

    .line 81
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2S:Z

    .line 83
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3Q:Z

    .line 85
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3S:Z

    .line 87
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_C1S:Z

    .line 89
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_C1Q:Z

    .line 91
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_C2S:Z

    .line 93
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_C2Q:Z

    .line 95
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_R8q:Z

    .line 97
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_R8s:Z

    .line 99
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_TOP:Z

    .line 101
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A82:Z

    .line 103
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_M33X:Z

    .line 105
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_F62:Z

    .line 107
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTE:Z

    .line 109
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTEQ:Z

    .line 111
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTES:Z

    .line 113
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOW:Z

    .line 115
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWQ:Z

    .line 117
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWS:Z

    .line 119
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_O1Q:Z

    .line 121
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_O1S:Z

    .line 123
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_O1:Z

    .line 125
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_T2Q:Z

    .line 127
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_T2S:Z

    .line 129
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_T2:Z

    .line 131
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_P3Q:Z

    .line 133
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_P3S:Z

    .line 135
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_P3:Z

    .line 137
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_B2Q:Z

    .line 139
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Q2Q:Z

    .line 141
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_R9Q:Z

    .line 143
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_B4Q:Z

    .line 145
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Q4Q:Z

    .line 147
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_B5Q:Z

    .line 149
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_B6Q:Z

    .line 151
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_B7R:Z

    .line 153
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_EUREKAQ:Z

    .line 155
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_EUREKAS:Z

    .line 157
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_PARADIGM:Z

    .line 159
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Q7Q:Z

    .line 161
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Q7MQ:Z

    .line 163
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->DISABLE_HEAVYUSER:Z

    .line 167
    :try_start_0
    const-string v2, "ro.boot.lassen.apfuse"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "apfuse":Ljava/lang/String;
    const-string v3, "ro.hardware.chipname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "chipname":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm.disable"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 175
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_SIOP_POLICY_FILENAME"

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 177
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "siop_b0q_sm8450"

    sput-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 182
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/system/heavyuser.disable"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "file2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->DISABLE_HEAVYUSER:Z

    .line 185
    const-string v5, "dvfs_policy_sm8450_xx"

    sput-object v5, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    .line 187
    sget-object v5, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME_DEFAULT:Ljava/lang/String;

    sget-object v6, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    .line 189
    const-string v5, "jdm"

    const-string v6, "in_house"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->VENDOR_JDM:Z

    .line 192
    const-string v5, "exynos9810"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->CHIP_LHOTSE:Z

    .line 194
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    if-eqz v5, :cond_19

    .line 195
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_exynos2100"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2100:Z

    .line 196
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_exynos2200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2200:Z

    .line 197
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_sm8250"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->CHIP_SDM8250:Z

    .line 198
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_sm8350"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->CHIP_SDM8350:Z

    .line 199
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_sm8450"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->CHIP_SDM8450:Z

    .line 201
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_o1q_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_O1Q:Z

    .line 202
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_t2q_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_T2Q:Z

    .line 203
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_p3q_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_P3Q:Z

    .line 205
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_o1s_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_O1S:Z

    .line 206
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_t2s_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_T2S:Z

    .line 207
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "_p3s_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_P3S:Z

    .line 209
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_O1S:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_T2S:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_P3S:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v6

    :goto_1
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTES:Z

    .line 210
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_O1Q:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_T2Q:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_P3Q:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v6

    :goto_3
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTEQ:Z

    .line 212
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_O1Q:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_O1S:Z

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move v5, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v5, v6

    :goto_5
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_O1:Z

    .line 213
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_T2Q:Z

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_T2S:Z

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    move v5, v1

    goto :goto_7

    :cond_8
    :goto_6
    move v5, v6

    :goto_7
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_T2:Z

    .line 214
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_P3Q:Z

    if-nez v5, :cond_a

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_P3S:Z

    if-eqz v5, :cond_9

    goto :goto_8

    :cond_9
    move v5, v1

    goto :goto_9

    :cond_a
    :goto_8
    move v5, v6

    :goto_9
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_P3:Z

    .line 216
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTEQ:Z

    if-nez v5, :cond_c

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTES:Z

    if-eqz v5, :cond_b

    goto :goto_a

    :cond_b
    move v5, v1

    goto :goto_b

    :cond_c
    :goto_a
    move v5, v6

    :goto_b
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTE:Z

    .line 218
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_r0q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_g0q_"

    .line 219
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_b0q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_c

    :cond_d
    move v5, v1

    goto :goto_d

    :cond_e
    :goto_c
    move v5, v6

    :goto_d
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWQ:Z

    .line 220
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_r0s_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_g0s_"

    .line 221
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_b0s_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_e

    :cond_f
    move v5, v1

    goto :goto_f

    :cond_10
    :goto_e
    move v5, v6

    :goto_f
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWS:Z

    .line 223
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWQ:Z

    if-nez v5, :cond_12

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWS:Z

    if-eqz v5, :cond_11

    goto :goto_10

    :cond_11
    move v5, v1

    goto :goto_11

    :cond_12
    :goto_10
    move v5, v6

    :goto_11
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOW:Z

    .line 225
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_b2q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_B2Q:Z

    .line 226
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_q2q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_Q2Q:Z

    .line 228
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_b4q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_B4Q:Z

    .line 229
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_q4q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_Q4Q:Z

    .line 231
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_b5q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_B5Q:Z

    .line 233
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_b6q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_B6Q:Z

    .line 235
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_b7r_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_B7R:Z

    .line 237
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_e1q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_e2q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_e3q_"

    .line 238
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_12

    :cond_13
    move v5, v1

    goto :goto_13

    :cond_14
    :goto_12
    move v5, v6

    :goto_13
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_EUREKAQ:Z

    .line 239
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_e1s_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_e2s_"

    .line 240
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_14

    :cond_15
    move v5, v1

    goto :goto_15

    :cond_16
    :goto_14
    move v5, v6

    :goto_15
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_EUREKAS:Z

    .line 242
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_pa1q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_pa2q_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v7, "_pa3q_"

    .line 243
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v1, v6

    :cond_18
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_PARADIGM:Z

    .line 245
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_q7q_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Q7Q:Z

    .line 247
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_q7mq_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Q7MQ:Z

    .line 249
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_r9q_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_R9Q:Z

    .line 251
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_x1q_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_X1Q:Z

    .line 252
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_x1s_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_X1S:Z

    .line 254
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_y2q_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2Q:Z

    .line 255
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_y2s_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2S:Z

    .line 257
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_z3q_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3Q:Z

    .line 258
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_z3s_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3S:Z

    .line 260
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_c1s_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_C1S:Z

    .line 261
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_c2s_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_C2S:Z

    .line 263
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_c1q_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_C1Q:Z

    .line 264
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_c2q_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_C2Q:Z

    .line 266
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_r8q_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_R8q:Z

    .line 267
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_r8s_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_R8s:Z

    .line 269
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_f2q_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_TOP:Z

    .line 271
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_bloomq_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMQ:Z

    .line 272
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_bloomxq_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMxq:Z

    .line 274
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_winnerlte_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_WINNERQ:Z

    .line 275
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_a32xjpn_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A32XJPN:Z

    .line 276
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_a32_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A32:Z

    .line 278
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_a52xq_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A52xq:Z

    .line 280
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_a55x_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A55x:Z

    .line 282
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_a56x_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A56X:Z

    .line 284
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_a82xq_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_A82:Z

    .line 285
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_m33x_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_M33X:Z

    .line 287
    sget-object v1, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "_f62_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_F62:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "file2":Ljava/io/File;
    .end local v2    # "apfuse":Ljava/lang/String;
    .end local v3    # "chipname":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_19
    goto :goto_16

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ssrm/Feature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
