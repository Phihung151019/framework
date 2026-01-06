.class Lcom/samsung/android/wfd/DeXMode$1;
.super Landroid/database/ContentObserver;
.source "DeXMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wfd/DeXMode;->registerDexSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wfd/DeXMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/wfd/DeXMode;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/wfd/DeXMode;
    .param p2, "arg0"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/samsung/android/wfd/DeXMode$1;->this$0:Lcom/samsung/android/wfd/DeXMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .line 62
    const-string v0, "DeXMode"

    const/4 v1, 0x0

    .line 63
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 64
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "key"

    const-string v4, "uibc_finger_enabled"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "def"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :try_start_0
    sget-object v3, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/wfd/DeXMode;->-$$Nest$sfgetDESKTOP_MODE_SETTINGS_CONTENT_URI()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "getSettings"

    invoke-virtual {v3, v6, v7, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 69
    .local v3, "result":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 71
    iget-object v4, p0, Lcom/samsung/android/wfd/DeXMode$1;->this$0:Lcom/samsung/android/wfd/DeXMode;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/wfd/DeXMode;->-$$Nest$fputmDexUibcFingerEnabled(Lcom/samsung/android/wfd/DeXMode;Z)V

    .line 72
    iget-object v4, p0, Lcom/samsung/android/wfd/DeXMode$1;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode$1;->this$0:Lcom/samsung/android/wfd/DeXMode;

    invoke-static {v5}, Lcom/samsung/android/wfd/DeXMode;->-$$Nest$fgetmDexUibcFingerEnabled(Lcom/samsung/android/wfd/DeXMode;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    :goto_0
    iput v5, v4, Lcom/samsung/android/wfd/DeXMode;->mToolType:I

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDexUibcFingerEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode$1;->this$0:Lcom/samsung/android/wfd/DeXMode;

    invoke-static {v5}, Lcom/samsung/android/wfd/DeXMode;->-$$Nest$fgetmDexUibcFingerEnabled(Lcom/samsung/android/wfd/DeXMode;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mToolType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode$1;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v5, v5, Lcom/samsung/android/wfd/DeXMode;->mToolType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v3    # "result":Landroid/os/Bundle;
    :cond_1
    goto :goto_1

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "Failed to get settings"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void
.end method
