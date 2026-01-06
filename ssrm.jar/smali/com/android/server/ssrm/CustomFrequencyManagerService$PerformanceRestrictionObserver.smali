.class Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;
.super Landroid/database/ContentObserver;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceRestrictionObserver"
.end annotation


# static fields
.field private static final MODE_MAX:I = 0x2

.field private static final MODE_MID:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final URI_MAX:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static final URI_MID:Ljava/lang/String; = "low_power"

.field private static final URI_RESTRICTION:Ljava/lang/String; = "restricted_device_performance"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsMAXPerfRestriction:Z

.field private mIsMIDPerfRestriction:Z

.field private mIsPerformanceRestricted:Z

.field mPsmLimitCheckRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsPerformanceRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPerformanceRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestricted(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckRestrictionSetting(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestrictionSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPowerSavingMode(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->getPowerSavingMode()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1142
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 1143
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1188
    new-instance p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;

    invoke-direct {p1, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)V

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    .line 1144
    iput-object p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mHandler:Landroid/os/Handler;

    .line 1145
    return-void
.end method

.method private checkRestricted(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 1229
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1237
    return v0

    .line 1235
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMAXPerfRestriction:Z

    return v0

    .line 1233
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMIDPerfRestriction:Z

    return v0

    .line 1231
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkRestrictionSetting()V
    .locals 5

    .line 1210
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "restricted_device_performance"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    .local v0, "valueStr":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1213
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1215
    .local v1, "value":[Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMIDPerfRestriction:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    goto :goto_1

    .line 1216
    :catch_0
    move-exception v4

    .line 1217
    .local v4, "e":Ljava/lang/NumberFormatException;
    iput-boolean v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMIDPerfRestriction:Z

    .line 1221
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    :try_start_1
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMAXPerfRestriction:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1224
    goto :goto_3

    .line 1222
    :catch_1
    move-exception v2

    .line 1223
    .local v2, "e":Ljava/lang/NumberFormatException;
    iput-boolean v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMAXPerfRestriction:Z

    .line 1226
    .end local v1    # "value":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_3
    return-void
.end method

.method private getPowerSavingMode()I
    .locals 5

    .line 1197
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1198
    .local v0, "midMode":I
    const/4 v1, 0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1199
    return v1

    .line 1202
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1203
    const/4 v1, 0x2

    return v1

    .line 1206
    :cond_1
    return v4
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 1175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1176
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1180
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1181
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    if-nez v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1186
    :goto_0
    return-void
.end method

.method public startObserving(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1155
    const-string v1, "restricted_device_performance"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$1;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;Landroid/os/Handler;)V

    .line 1154
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1168
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestrictionSetting()V

    .line 1169
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->getPowerSavingMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestricted(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    .line 1170
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    invoke-static {v0}, Lcom/android/server/ssrm/DeviceStatus;->disableBoosting(Z)V

    .line 1171
    return-void
.end method
