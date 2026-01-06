.class public Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;
.super Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;
.source "DisplayAiqeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayAiqeManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeHalInstance;->getInstance(Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;Landroid/content/Context;)Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    .line 59
    return-void
.end method


# virtual methods
.method public getContentMode()Ljava/lang/String;
    .locals 4

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "mode":Ljava/lang/String;
    const-string v1, "getContentMode : start"

    const-string v2, "DisplayAiqeManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->getContentMode()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentMode : mode - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "getContentMode fail"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getCoprValue()I
    .locals 4

    .line 272
    const-string v0, "DisplayAiqeManagerService"

    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->getCoprValue()I

    move-result v1

    .line 275
    .local v1, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCoprValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    return v1

    .line 277
    .end local v1    # "ret":I
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "getCoprValue fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayService()Z
    .locals 3

    .line 259
    const-string v0, "getDisplayService"

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->getDisplayService()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getDisplayService fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPanelName(I)Ljava/lang/String;
    .locals 4
    .param p1, "displayId"    # I

    .line 324
    const-string v0, "DisplayAiqeManagerService"

    const/4 v1, 0x0

    .line 325
    .local v1, "panel_name":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v2, :cond_0

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v2, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->getPanelName(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPanelName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    goto :goto_0

    .line 329
    :catch_0
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getPanelName fail"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public setABCMode(ILjava/lang/String;)Z
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .line 285
    const-string v0, "DisplayAiqeManagerService"

    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v1, :cond_0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setABCMode(ILjava/lang/String;)Z

    move-result v1

    .line 288
    .local v1, "ret":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setABCMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    return v1

    .line 290
    .end local v1    # "ret":Z
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setABCMode fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setABCReconfig(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .line 311
    const-string v0, "DisplayAiqeManagerService"

    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v1, :cond_0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v1, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setABCReconfig(I)Z

    move-result v1

    .line 314
    .local v1, "ret":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setABCReconfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    return v1

    .line 316
    .end local v1    # "ret":Z
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setABCReconfig fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setABCState(II)Z
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 298
    const-string v0, "DisplayAiqeManagerService"

    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v1, :cond_0

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setABCState(II)Z

    move-result v1

    .line 301
    .local v1, "ret":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setABCState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    return v1

    .line 303
    .end local v1    # "ret":Z
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setABCState fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBlueLightFilterMode(ZI)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "level"    # I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlueLightFilterMode : enable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setBlueLightFilterMode(ZI)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setBlueLightFilterMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setByPassMode(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setByPassMode : enable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setByPassMode(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setByPassMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setContentMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContentMode : mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setContentMode(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setContentMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setEnvironmentAdaptiveDisplayLevel(I)Z
    .locals 3
    .param p1, "level"    # I

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnvironmentAdaptiveDisplayLevel : level - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setEnvironmentAdaptiveDisplayLevel(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setEnvironmentAdaptiveDisplayLevel fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setEnvironmentAdaptiveDisplayMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnvironmentAdaptiveDisplayMode : mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setEnvironmentAdaptiveDisplayMode(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setEnvironmentAdaptiveDisplayMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setExtraDimMode(I)Z
    .locals 3
    .param p1, "level"    # I

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExtraDimMode : level - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setExtraDimMode(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setExtraDimMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHighBrightnessMode(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHighBrightnessMode : index - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setHighBrightnessMode(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setHighBrightnessMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHighDynamicRangeMode(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHighDynamicRangeMode : enable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setHighDynamicRangeMode(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setHighDynamicRangeMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setInternalDimmingFrame(I)Z
    .locals 3
    .param p1, "count"    # I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInternalDimmingFrame : count - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setInternalDimmingFrame(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setInternalDimmingFrame fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLinearSkinMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLinearSkinMode: mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setLinearSkinMode(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setLinearSkinMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMdnieMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMdnieMode: mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setMdnieMode(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setMdnieMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNaturalMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNaturalMode: mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setNaturalMode(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setNaturalMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setScreenMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenMode : mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setScreenMode(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setScreenMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVividnessMode(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVividnessMode : index - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setVividnessMode(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setVividnessMode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWhiteBalanceMode(IIIIII)Z
    .locals 9
    .param p1, "m_r"    # I
    .param p2, "m_g"    # I
    .param p3, "m_b"    # I
    .param p4, "s_r"    # I
    .param p5, "s_g"    # I
    .param p6, "s_b"    # I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWhiteBalanceMode : mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;->mDisplayAiqeHal:Lcom/samsung/android/displayaiqe/DisplayAiqeHal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .end local p1    # "m_r":I
    .end local p2    # "m_g":I
    .end local p3    # "m_b":I
    .end local p4    # "s_r":I
    .end local p5    # "s_g":I
    .end local p6    # "s_b":I
    .local v3, "m_r":I
    .local v4, "m_g":I
    .local v5, "m_b":I
    .local v6, "s_r":I
    .local v7, "s_g":I
    .local v8, "s_b":I
    :try_start_1
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/displayaiqe/DisplayAiqeHal;->setWhiteBalanceMode(IIIIII)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 165
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "m_r":I
    .end local v4    # "m_g":I
    .end local v5    # "m_b":I
    .end local v6    # "s_r":I
    .end local v7    # "s_g":I
    .end local v8    # "s_b":I
    .restart local p1    # "m_r":I
    .restart local p2    # "m_g":I
    .restart local p3    # "m_b":I
    .restart local p4    # "s_r":I
    .restart local p5    # "s_g":I
    .restart local p6    # "s_b":I
    :catch_1
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    move-object p1, v0

    .line 166
    .end local p2    # "m_g":I
    .end local p3    # "m_b":I
    .end local p4    # "s_r":I
    .end local p5    # "s_g":I
    .end local p6    # "s_b":I
    .restart local v3    # "m_r":I
    .restart local v4    # "m_g":I
    .restart local v5    # "m_b":I
    .restart local v6    # "s_r":I
    .restart local v7    # "s_g":I
    .restart local v8    # "s_b":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    const-string p2, "setWhiteBalanceMode fail"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 162
    .end local v3    # "m_r":I
    .end local v4    # "m_g":I
    .end local v5    # "m_b":I
    .end local v6    # "s_r":I
    .end local v7    # "s_g":I
    .end local v8    # "s_b":I
    .local p1, "m_r":I
    .restart local p2    # "m_g":I
    .restart local p3    # "m_b":I
    .restart local p4    # "s_r":I
    .restart local p5    # "s_g":I
    .restart local p6    # "s_b":I
    :cond_0
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 169
    .end local p1    # "m_r":I
    .end local p2    # "m_g":I
    .end local p3    # "m_b":I
    .end local p4    # "s_r":I
    .end local p5    # "s_g":I
    .end local p6    # "s_b":I
    .restart local v3    # "m_r":I
    .restart local v4    # "m_g":I
    .restart local v5    # "m_b":I
    .restart local v6    # "s_r":I
    .restart local v7    # "s_g":I
    .restart local v8    # "s_b":I
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
