.class public abstract Lcom/samsung/android/gesture/MotionRecognitionSettings;
.super Ljava/lang/Object;
.source "MotionRecognitionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEVICE_TYPE_PHONE:I = 0x0

.field private static final DEVICE_TYPE_PHONE_STRING:Ljava/lang/String; = "phone"

.field private static final DEVICE_TYPE_TABLET:I = 0x1

.field private static final DEVICE_TYPE_TABLET_STRING:Ljava/lang/String; = "tablet"

.field private static final DEVICE_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"


# instance fields
.field private mBitmaskMotionSystemSettingsActivated:I

.field private mDeviceType:I

.field private mIsAdaptiveBrightnessMode:I

.field private final mLock:Ljava/lang/Object;

.field private mRegisteredMotions:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static bridge synthetic -$$Nest$fputmBitmaskMotionSystemSettingsActivated(Lcom/samsung/android/gesture/MotionRecognitionSettings;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mLock:Ljava/lang/Object;

    .line 43
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mRegisteredMotions:I

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mIsAdaptiveBrightnessMode:I

    .line 52
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mDeviceType:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 59
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSettings;Landroid/os/Handler;)V

    .line 61
    .local v2, "mMotionSettingsObserver":Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pick_up"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 63
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_overturn"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 65
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_merged_mute_pause"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pick_up_to_call_out"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->checkDeviceType()V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->updateFromMotionSystemSettings()V

    .line 75
    return-void
.end method

.method private checkDeviceType()V
    .locals 2

    .line 78
    const-string v0, "ro.build.characteristics"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "deviceType":Ljava/lang/String;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mDeviceType:I

    goto :goto_0

    .line 81
    :cond_0
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mDeviceType:I

    goto :goto_0

    .line 84
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mDeviceType:I

    .line 85
    :goto_0
    return-void
.end method

.method private findMotionTypeFromEvents(I)I
    .locals 1
    .param p1, "event"    # I

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "motionType":I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 275
    :sswitch_0
    const/high16 v0, 0x1000000

    .line 276
    goto :goto_0

    .line 271
    :sswitch_1
    const/16 v0, 0x400

    .line 272
    goto :goto_0

    .line 267
    :sswitch_2
    const/4 v0, 0x4

    .line 268
    goto :goto_0

    .line 264
    :sswitch_3
    const/4 v0, 0x1

    .line 265
    nop

    .line 280
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0x43 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x72 -> :sswitch_0
        0x73 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getBitmaskSensorsActivated()I
    .locals 4

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "bitmaskSensorsActivated":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUsedSensorForEvents] sensors : Settings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionRecognitionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    const/high16 v3, 0x2000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 107
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v3

    const v3, 0x120401

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 113
    or-int/lit8 v0, v0, 0x1

    .line 117
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v3

    const v3, 0x100401

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 121
    or-int/lit8 v0, v0, 0x2

    .line 125
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v3

    const v3, 0x100400

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 128
    or-int/lit8 v0, v0, 0x4

    .line 132
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v3

    const v3, 0x20001

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 135
    or-int/lit8 v0, v0, 0x10

    .line 138
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getUsedSensorForEvents] sensors for motion : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v0
.end method

.method public isActivatedEvent(I)Z
    .locals 2
    .param p1, "event"    # I

    .line 287
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->findMotionTypeFromEvents(I)I

    move-result v0

    .line 289
    .local v0, "motionType":I
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isActivatedMotion(I)Z
    .locals 1
    .param p1, "motionType"    # I

    .line 296
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdaptiveBrightnessEnabled()I
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mIsAdaptiveBrightnessMode:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 318
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness Mode(Value): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mIsAdaptiveBrightnessMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mIsAdaptiveBrightnessMode:I

    monitor-exit v0

    return v1

    .line 320
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isMotionEngineEnabled()Z
    .locals 3

    .line 255
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 256
    .local v0, "isEnabled":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .isMotionEngineEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionRecognitionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v0
.end method

.method public isSettingMotion(I)Z
    .locals 2
    .param p1, "motionType"    # I

    .line 303
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract onChangeAdaptiveBrightnessMode(I)V
.end method

.method public abstract onChangeMotionSettings(I)V
.end method

.method public setRegisteredMotions(I)V
    .locals 0
    .param p1, "registeredMotions"    # I

    .line 91
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mRegisteredMotions:I

    .line 92
    return-void
.end method

.method public updateFromMotionSystemSettings()V
    .locals 11

    .line 207
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "bitmaskMotionSystemSettings":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x19

    if-ge v2, v3, :cond_5

    .line 211
    const/4 v3, 0x1

    shl-int v4, v3, v2

    .line 213
    .local v4, "motionType":I
    const/4 v5, -0x2

    const/4 v6, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_5

    .line 236
    :sswitch_0
    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    .line 237
    goto/16 :goto_5

    .line 230
    :sswitch_1
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up_to_call_out"

    invoke-static {v7, v8, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v6

    :goto_1
    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    .line 231
    goto/16 :goto_5

    .line 233
    :sswitch_2
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up"

    invoke-static {v7, v8, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v3, v6

    :goto_2
    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    .line 234
    goto :goto_5

    .line 216
    :sswitch_3
    const/4 v7, 0x0

    .line 217
    .local v7, "result":I
    iget v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mDeviceType:I

    if-eq v8, v3, :cond_3

    .line 218
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 219
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_merged_mute_pause"

    invoke-static {v8, v9, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "motion_overturn"

    .line 220
    invoke-static {v9, v10, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    and-int v7, v8, v5

    .line 221
    const-string v5, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Palm motion, result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " motionType =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 223
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_overturn"

    invoke-static {v8, v9, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    move v7, v5

    .line 224
    const-string v5, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Motion, result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move v3, v6

    :goto_4
    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    .line 228
    nop

    .line 242
    .end local v7    # "result":I
    :goto_5
    const/high16 v3, 0x2000000

    or-int/2addr v1, v3

    .line 210
    .end local v4    # "motionType":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 245
    .end local v2    # "i":I
    :cond_5
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings updated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings;->mBitmaskMotionSystemSettingsActivated:I

    .line 247
    .end local v1    # "bitmaskMotionSystemSettings":I
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_2
        0x400 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x100000 -> :sswitch_0
    .end sparse-switch
.end method
