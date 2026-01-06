.class public Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
.super Ljava/lang/Object;
.source "HdrDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;
    }
.end annotation


# static fields
.field public static final FEATURE_SUPPORT_DISABLE_PANEL_DIA:Z

.field public static final FEATURE_SUPPORT_HDR_HW:Z

.field public static final FEATURE_SUPPORT_HDR_NODE:Z

.field private static final LIST_LEGACY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HdrSolution_HdrDisplayController"

.field private static final URI_SETTING_BLF:Ljava/lang/String; = "blue_light_filter"

.field private static final URI_SETTING_EAD:Ljava/lang/String; = "ead_enabled"

.field private static final URI_SETTING_NIGHT_DIM:Ljava/lang/String; = "blue_light_filter_night_dim"

.field private static final WRITE_HDR_PATH:Ljava/lang/String; = "/sys/class/mdnie/mdnie/hdr"

.field private static final WRITE_PANEL_DIA:Ljava/lang/String; = "/sys/class/lcd/panel/dia"


# instance fields
.field private HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

.field private HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mBlueLightFilterOn:Z

.field private mContext:Landroid/content/Context;

.field private mEadOn:Z

.field private mHdrState:Z

.field private mIsNightDim:Z

.field private mLegacy:Z

.field private mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mMultiWindowMode:I

.field private mMultiWindowOn:Z

.field private mNetflix:I

.field private mNightDimOn:Z

.field private mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field private mProductApiLevel:I

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mSettedHdrMode:I

.field private mSettingObserver:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;

.field private mSupportHdrSolution:Z

.field private mTaskStackListener:Landroid/app/TaskStackListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHdrState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z
    .locals 0

    iget-boolean p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiWindowMode(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)I
    .locals 0

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiWindowOn(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z
    .locals 0

    iget-boolean p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemMultiWindowManager(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Lcom/samsung/android/app/SemMultiWindowManager;
    .locals 0

    iget-object p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportHdrSolution(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z
    .locals 0

    iget-boolean p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMultiWindowMode(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;I)V
    .locals 0

    iput p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMultiWindowOn(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;Z)V
    .locals 0

    iput-boolean p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBLFValue(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateBLFValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEADValue(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateEADValue()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 53
    const-string v7, "SM8250"

    const-string v8, "SM7150"

    const-string v0, "EXYNOS9820"

    const-string v1, "EXYNOS9825"

    const-string v2, "EXYNOS990"

    const-string v3, "EXYNOS2100"

    const-string v4, "EXYNOS9610"

    const-string v5, "EXYNOS9611"

    const-string v6, "SM8150"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->LIST_LEGACY:[Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_DISABLE_PANEL_DIA"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_DISABLE_PANEL_DIA:Z

    .line 85
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_HDR_NODE:Z

    .line 86
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HW_HDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_HDR_HW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mProductApiLevel:I

    .line 59
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    .line 60
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    .line 69
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    .line 70
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowOn:Z

    .line 71
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    .line 72
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    .line 73
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    .line 74
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mEadOn:Z

    .line 75
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNightDimOn:Z

    .line 76
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mIsNightDim:Z

    .line 78
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowMode:I

    .line 79
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettedHdrMode:I

    .line 81
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNetflix:I

    .line 88
    new-instance v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$1;

    invoke-direct {v1, p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$1;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 105
    new-instance v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;

    invoke-direct {v1, p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 123
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    .line 124
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    .line 127
    const-string v1, "ro.soc.model"

    const-string v2, "null"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "chipName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ro.vendor.qti.soc_model"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ro.hardware.chipname"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_1
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mProductApiLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ro.product.first_api_level"

    invoke-static {v4, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mProductApiLevel:I

    .line 135
    sget-object v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->LIST_LEGACY:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iput-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    goto :goto_0

    .line 136
    :cond_2
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    .line 138
    :goto_0
    iget-boolean v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    if-eqz v3, :cond_5

    .line 139
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 140
    .local v3, "activityManagerNative":Landroid/app/IActivityManager;
    if-eqz v3, :cond_3

    .line 142
    :try_start_0
    iget-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v3, v5}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_1

    .line 143
    :catch_0
    move-exception v5

    .line 144
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    iput-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 148
    iget-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    if-eqz v5, :cond_4

    .line 150
    :try_start_1
    iget-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v6, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v5, v6}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    goto :goto_2

    .line 151
    :catch_1
    move-exception v5

    .line 152
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    new-instance v5, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v5}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 158
    .end local v3    # "activityManagerNative":Landroid/app/IActivityManager;
    :cond_5
    new-instance v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;Landroid/os/Handler;)V

    iput-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettingObserver:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;

    .line 160
    const-string v3, "debug.hdr.enforce.hdr_solution"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "enforceHdrSolution":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_6
    goto :goto_3

    :sswitch_0
    const-string v5, "OFF"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_4

    :sswitch_1
    const-string v5, "ON"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    goto :goto_4

    :goto_3
    const/4 v3, -0x1

    :goto_4
    const-string v5, "HdrSolution_HdrDisplayController"

    packed-switch v3, :pswitch_data_0

    .line 172
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    .line 173
    sget-boolean v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_HDR_NODE:Z

    if-eqz v3, :cond_a

    .line 175
    sget-boolean v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_HDR_HW:Z

    if-eqz v3, :cond_7

    .line 177
    iput-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    goto :goto_7

    .line 167
    :pswitch_0
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    .line 168
    const-string v0, "Prevent support Hdr Solution"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    goto :goto_7

    .line 163
    :pswitch_1
    iput-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    .line 164
    const-string v0, "Enforce support Hdr Solution"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    goto :goto_7

    .line 181
    :cond_7
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 182
    .local v3, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v3, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 183
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v7

    .line 184
    .local v7, "actualHdrCapabilities":Landroid/view/Display$HdrCapabilities;
    invoke-virtual {v7}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v8

    .line 185
    .local v8, "types":[I
    if-eqz v8, :cond_a

    .line 186
    array-length v9, v8

    :goto_5
    if-ge v0, v9, :cond_a

    aget v10, v8, v0

    .line 187
    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_9

    const/4 v11, 0x4

    if-eq v10, v11, :cond_9

    const/4 v11, 0x3

    if-ne v10, v11, :cond_8

    goto :goto_6

    .line 186
    .end local v10    # "type":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 189
    .restart local v10    # "type":I
    :cond_9
    :goto_6
    iput-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    .line 190
    const-string v0, "mSupportHdrSolution = true"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    nop

    .line 200
    .end local v3    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v6    # "display":Landroid/view/Display;
    .end local v7    # "actualHdrCapabilities":Landroid/view/Display$HdrCapabilities;
    .end local v8    # "types":[I
    .end local v10    # "type":I
    :cond_a
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9df -> :sswitch_1
        0x1314f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHdrModeFromPackageName()I
    .locals 4

    .line 246
    const/4 v0, 0x1

    .line 247
    .local v0, "mode":I
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->getTopPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "mTopPackageName":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 249
    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 250
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 251
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    const/4 v0, 0x3

    .line 250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v2    # "j":I
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 257
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_1
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 258
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    const/4 v0, 0x2

    .line 257
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    .end local v2    # "j":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HdrAppMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HdrSolution_HdrDisplayController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_4
    return v0
.end method

.method public static getTopPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 359
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 360
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 362
    .local v1, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v2, ""

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "topPackage":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 368
    const-string v4, "HdrSolution_HdrDisplayController"

    const-string v5, "getTopPackage : Failed to get top information"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-object v2

    .line 371
    :cond_1
    return-object v3

    .line 363
    .end local v3    # "topPackage":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v2
.end method

.method private setHdrMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 270
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    const-string v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 275
    :cond_0
    const-string v0, "/sys/class/lcd/panel/dia"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 276
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const-string v4, "HdrSolution_HdrDisplayController"

    if-eqz v3, :cond_4

    .line 278
    iget-boolean v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mEadOn:Z

    if-nez v3, :cond_3

    .line 280
    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNetflix:I

    if-ne v3, v2, :cond_1

    .line 282
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setHighDynamicRangeMode(Z)Z

    .line 283
    const-string v3, "Netflix -> mDNIe bypass!!!"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_1
    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mProductApiLevel:I

    const/16 v5, 0x23

    if-lt v3, v5, :cond_2

    .line 288
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setHighDynamicRangeMode(Z)Z

    .line 289
    const-string v3, "Non Netflix(After V OS Launching) -> mDNIe process!!!"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_2
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setHighDynamicRangeMode(Z)Z

    .line 293
    const-string v3, "Non Netflix(Before V OS Launching)-> mDNIe bypass!!!"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_3
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setHighDynamicRangeMode(Z)Z

    .line 299
    const-string v3, "Non mEadOn -> mDNIe process!!!"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_4
    const-string v3, "setHdrMode: mMdnieManager is NULL!!!"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    sget-boolean v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_DISABLE_PANEL_DIA:Z

    if-eqz v3, :cond_5

    .line 308
    invoke-static {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->sysfsWrite(Ljava/lang/String;I)Z

    .line 310
    :cond_5
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    .line 312
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setHighDynamicRangeMode(Z)V

    .line 313
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setIRCompensationMode(Z)V

    goto :goto_1

    .line 317
    :cond_6
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v3, :cond_7

    .line 318
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setHighDynamicRangeMode(Z)Z

    .line 320
    :cond_7
    sget-boolean v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_DISABLE_PANEL_DIA:Z

    if-eqz v3, :cond_8

    .line 321
    invoke-static {v0, v2}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->sysfsWrite(Ljava/lang/String;I)Z

    .line 323
    :cond_8
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_9

    .line 325
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setHighDynamicRangeMode(Z)V

    .line 326
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setIRCompensationMode(Z)V

    .line 329
    :cond_9
    :goto_1
    return-void
.end method

.method private startSettingObserver()V
    .locals 4

    .line 376
    :try_start_0
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateBLFValue()V

    .line 377
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateEADValue()V

    .line 378
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettingObserver:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HdrSolution_HdrDisplayController"

    const-string v2, "startSettingObserver : Fail to startSettingObserver"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private stopSettingObserver()V
    .locals 3

    .line 386
    :try_start_0
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettingObserver:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HdrSolution_HdrDisplayController"

    const-string v2, "startSettingObserver : Fail to stopSettingObserver"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "out":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, "myfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 337
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 341
    nop

    .line 342
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 343
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 352
    nop

    .line 353
    const/4 v2, 0x1

    return v2

    .line 344
    :catch_0
    move-exception v2

    goto :goto_0

    .line 338
    :catch_1
    move-exception v2

    .line 339
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    return v3

    .line 345
    .local v2, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 350
    goto :goto_1

    .line 348
    :catch_2
    move-exception v4

    .line 349
    .local v4, "err":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    .end local v4    # "err":Ljava/lang/Exception;
    :goto_1
    return v3

    .line 355
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    return v3
.end method

.method private updateBLFValue()V
    .locals 5

    .line 393
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_night_dim"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 394
    .local v0, "nightDim":I
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mIsNightDim:Z

    .line 395
    if-ne v0, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNightDimOn:Z

    .line 397
    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "blue_light_filter"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v1, v3

    :cond_2
    iput-boolean v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    .line 398
    return-void
.end method

.method private updateEADValue()V
    .locals 3

    .line 401
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ead_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mEadOn:Z

    .line 402
    return-void
.end method


# virtual methods
.method public setHdrLayerState(ZI)V
    .locals 3
    .param p1, "state"    # Z
    .param p2, "netflix"    # I

    .line 203
    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    const-string v1, "HdrSolution_HdrDisplayController"

    if-eqz v0, :cond_2

    .line 204
    iput-boolean p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    .line 206
    iput p2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNetflix:I

    .line 208
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 211
    :cond_0
    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->startSettingObserver()V

    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->stopSettingObserver()V

    .line 216
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHdrLayerState("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), Netflix("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNetflix:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateHdrMode()V

    goto :goto_1

    .line 220
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNetflix:I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHdrLayer("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), HDR Uncertified Device"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_1
    return-void
.end method

.method public updateHdrMode()V
    .locals 11

    .line 226
    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 227
    .local v0, "hdrOnOff":Z
    :goto_0
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->getHdrModeFromPackageName()I

    move-result v2

    .line 228
    .local v2, "hdrAppMode":I
    if-eqz v0, :cond_1

    move v1, v2

    .line 230
    .local v1, "requiredHdrMode":I
    :cond_1
    iget-boolean v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mIsNightDim:Z

    const-string v4, "), MultiWindow("

    const-string v5, ") , S_EAD("

    const-string v6, "), BLF("

    const-string v7, "HdrState("

    const-string v8, ")"

    const-string v9, "HdrSolution_HdrDisplayController"

    if-eqz v3, :cond_3

    .line 231
    iget-boolean v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    const-string v10, "), ND("

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNightDimOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mEadOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 232
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNightDimOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mEadOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 234
    :cond_3
    iget-boolean v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mEadOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 235
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mEadOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_1
    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettedHdrMode:I

    if-eq v3, v1, :cond_5

    .line 239
    invoke-direct {p0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->setHdrMode(I)V

    .line 240
    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettedHdrMode:I

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMode HDR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettedHdrMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_5
    return-void
.end method
