.class public Lcom/samsung/android/game/input/InputRedirectionHelper;
.super Ljava/lang/Object;
.source "InputRedirectionHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputRedirectionHelper"


# instance fields
.field mInputRedirection:Lcom/samsung/android/game/input/InputRedirection;

.field mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerService"    # Lcom/android/server/wm/WindowManagerInternal;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/samsung/android/game/input/InputRedirectionHelper;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputRedirection"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 21
    new-instance v1, Lcom/samsung/android/game/input/InputRedirection;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/game/input/InputRedirection;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/game/input/InputRedirectionHelper;->mInputRedirection:Lcom/samsung/android/game/input/InputRedirection;

    .line 22
    return-void
.end method


# virtual methods
.method public setInputFilterCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 29
    const-string v0, "InputRedirectionHelper"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .local v1, "object":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 31
    .local v2, "code":I
    const-string v3, "success"

    .line 33
    .local v3, "msg":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v4, "requestJson":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 35
    .local v5, "status":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===setInputFilterCommand, status ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-nez v5, :cond_0

    .line 37
    iget-object v6, p0, Lcom/samsung/android/game/input/InputRedirectionHelper;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    goto :goto_0

    .line 38
    :cond_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 39
    const-string v6, "param"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 40
    .local v6, "arr":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/samsung/android/game/input/InputRedirectionHelper;->mInputRedirection:Lcom/samsung/android/game/input/InputRedirection;

    invoke-virtual {v7, v6}, Lcom/samsung/android/game/input/InputRedirection;->getMapInfoFromJsonArray(Lorg/json/JSONArray;)I

    .line 41
    iget-object v7, p0, Lcom/samsung/android/game/input/InputRedirectionHelper;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v8, p0, Lcom/samsung/android/game/input/InputRedirectionHelper;->mInputRedirection:Lcom/samsung/android/game/input/InputRedirection;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 42
    .end local v6    # "arr":Lorg/json/JSONArray;
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, -0x1

    .line 44
    const-string v6, "Wrong status"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 51
    .end local v4    # "requestJson":Lorg/json/JSONObject;
    .end local v5    # "status":I
    :goto_0
    goto :goto_1

    .line 46
    :catch_0
    move-exception v4

    .line 47
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception, e ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v2, -0x1

    .line 50
    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 53
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    :try_start_1
    const-string v4, "code"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string v4, "msg"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    goto :goto_2

    .line 55
    :catch_1
    move-exception v4

    .line 56
    .restart local v4    # "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "json error for response, e ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setInputPickUpCommand(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 25
    iget-object v0, p0, Lcom/samsung/android/game/input/InputRedirectionHelper;->mInputRedirection:Lcom/samsung/android/game/input/InputRedirection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/game/input/InputRedirection;->setGenShinAutoPickUpFlag(ZII)V

    .line 26
    return-void
.end method
