.class Lcom/samsung/android/game/GameManagerService$DisplayListener;
.super Ljava/lang/Object;
.source "GameManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;
    }
.end annotation


# static fields
.field private static final SECURE_SETTINGS_REFRESH_RATE_MODE:Ljava/lang/String; = "refresh_rate_mode"


# instance fields
.field private final MULTI_RESOLUTION_SUPPORTED:Z

.field private density:I

.field private longPixel:I

.field private shortPixel:I

.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;

.field private vrrMode:I


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1218
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1211
    const-string v0, "WQHD,FHD,HD"

    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->MULTI_RESOLUTION_SUPPORTED:Z

    .line 1213
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->longPixel:I

    .line 1214
    iput v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->shortPixel:I

    .line 1215
    iput v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->density:I

    .line 1216
    iput v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->vrrMode:I

    .line 1219
    invoke-static {p1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1220
    .local p1, "cr":Landroid/content/ContentResolver;
    const-string v1, "refresh_rate_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->vrrMode:I

    .line 1222
    iget-boolean v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->MULTI_RESOLUTION_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 1223
    const-string v0, "GameManager"

    const-string v1, "multi-resolution is supported"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener;->checkIfResolutionChanged()Z

    .line 1228
    :cond_0
    return-void
.end method

.method private checkIfResolutionChanged()Z
    .locals 7

    .line 1295
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1296
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1297
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1298
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1299
    .local v2, "newLongPixel":I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1300
    .local v3, "newShortPixel":I
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1301
    .local v4, "newDensity":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dpi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", longPixel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", shortPixel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GameManager"

    invoke-static {v6, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    iget v5, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->longPixel:I

    if-ne v2, v5, :cond_1

    iget v5, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->shortPixel:I

    if-ne v3, v5, :cond_1

    iget v5, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->density:I

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 1309
    :cond_0
    const/4 v5, 0x0

    return v5

    .line 1304
    :cond_1
    :goto_0
    iput v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->longPixel:I

    .line 1305
    iput v3, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->shortPixel:I

    .line 1306
    iput v4, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->density:I

    .line 1307
    const/4 v5, 0x1

    return v5
.end method

.method private checkIfVrrSettingChanged()Z
    .locals 4

    .line 1269
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1270
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "refresh_rate_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1271
    .local v1, "newVrrMode":I
    iget v3, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->vrrMode:I

    if-eq v1, v3, :cond_0

    .line 1272
    iput v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->vrrMode:I

    .line 1273
    iget v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->vrrMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "onDisplayChanged(): refresh_rate_mode: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const/4 v2, 0x1

    return v2

    .line 1276
    :cond_0
    return v2
.end method

.method private sendVrrSettingChangedToGos()V
    .locals 4

    .line 1281
    const-string v0, "mDisplayListener before send intent to GameIntentService"

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    const-string v2, "type"

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1286
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1287
    const-string v2, "mDisplayListener after send intent to GameIntentService"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    goto :goto_0

    .line 1288
    :catch_0
    move-exception v2

    .line 1289
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "mDisplayListener failed to send intent to GameIntentService"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1292
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method


# virtual methods
.method getResLog()Ljava/lang/String;
    .locals 2

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->longPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->shortPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->density:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ppi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 1315
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6
    .param p1, "displayId"    # I

    .line 1236
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmIsGosEnabled(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/game/GameManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/game/GameManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1239
    .local v0, "tempDisplay":Landroid/view/Display;
    if-nez v0, :cond_1

    return-void

    .line 1241
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    .line 1242
    .local v1, "displayState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged. displyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    if-eqz p1, :cond_2

    return-void

    .line 1245
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1246
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmFgCheckThread(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/FgCheckThread;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1247
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmFgCheckThread(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/FgCheckThread;

    move-result-object v2

    const/16 v3, 0x2717

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/FgCheckThread;->sendEmptyMessage(I)V

    .line 1250
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->MULTI_RESOLUTION_SUPPORTED:Z

    if-eqz v2, :cond_6

    .line 1251
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener;->checkIfResolutionChanged()Z

    move-result v2

    .line 1252
    .local v2, "isResolutionChanged":Z
    if-eqz v2, :cond_4

    .line 1254
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v3}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmHandler(Lcom/samsung/android/game/GameManagerService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;-><init>(Lcom/samsung/android/game/GameManagerService$DisplayListener;Lcom/samsung/android/game/GameManagerService-IA;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1256
    .end local v2    # "isResolutionChanged":Z
    :cond_4
    goto :goto_0

    .line 1257
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmFgCheckThread(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/FgCheckThread;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1258
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmFgCheckThread(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/FgCheckThread;

    move-result-object v2

    const/16 v3, 0x2716

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/FgCheckThread;->sendEmptyMessage(I)V

    .line 1262
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener;->checkIfVrrSettingChanged()Z

    move-result v2

    .line 1263
    .local v2, "isVrrSettingChanged":Z
    if-eqz v2, :cond_7

    .line 1264
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener;->sendVrrSettingChangedToGos()V

    .line 1266
    :cond_7
    return-void

    .line 1236
    .end local v0    # "tempDisplay":Landroid/view/Display;
    .end local v1    # "displayState":I
    .end local v2    # "isVrrSettingChanged":Z
    :cond_8
    :goto_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 1232
    return-void
.end method
