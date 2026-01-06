.class Lcom/samsung/android/game/FgCheckThread$4;
.super Landroid/os/Handler;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/FgCheckThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/FgCheckThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/FgCheckThread;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/FgCheckThread;
    .param p2, "arg0"    # Landroid/os/Looper;
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

    .line 269
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 272
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 273
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ", userId: "

    const-string v2, "FgCheckThread"

    packed-switch v0, :pswitch_data_0

    .line 328
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLooperPrepared(), invalid msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/game/PkgWithUserId;

    .line 320
    .local v0, "focusedPkg":Lcom/samsung/android/game/PkgWithUserId;
    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    .line 322
    .local v4, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLooperPrepared(), msg: MSG_TASK_FOCUSED, pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v1, v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$mhandleTaskFocused(Lcom/samsung/android/game/FgCheckThread;Lcom/samsung/android/game/PkgWithUserId;)V

    .line 325
    goto/16 :goto_0

    .line 309
    .end local v0    # "focusedPkg":Lcom/samsung/android/game/PkgWithUserId;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "userId":I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 310
    .local v0, "pkgName":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 311
    .local v3, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLooperPrepared(), msg: MSG_APP_CREATE, pkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 302
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v3    # "userId":I
    :pswitch_3
    const-string v0, "onLooperPrepared(), msg: MSG_KEY_GUARD_LOCKED"

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$msendFocusOutConditionally(Lcom/samsung/android/game/FgCheckThread;)V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmResumedPkgMap(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 298
    :pswitch_4
    const-string v0, "onLooperPrepared(), msg: MSG_USER_PRESENT"

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$mhandleUserPresent(Lcom/samsung/android/game/FgCheckThread;)V

    .line 300
    goto :goto_0

    .line 291
    :pswitch_5
    const-string v0, "onLooperPrepared(), msg: MSG_LCD_ON"

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmLcdOn(Lcom/samsung/android/game/FgCheckThread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$mhandleLcdOn(Lcom/samsung/android/game/FgCheckThread;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fputmLcdOn(Lcom/samsung/android/game/FgCheckThread;Z)V

    .line 296
    goto :goto_0

    .line 284
    :pswitch_6
    const-string v0, "onLooperPrepared(), msg: MSG_LCD_OFF"

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmLcdOn(Lcom/samsung/android/game/FgCheckThread;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$msendFocusOutConditionally(Lcom/samsung/android/game/FgCheckThread;)V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fputmLcdOn(Lcom/samsung/android/game/FgCheckThread;Z)V

    .line 289
    goto :goto_0

    .line 275
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/game/PkgWithUserId;

    .line 276
    .local v0, "resumedPkg":Lcom/samsung/android/game/PkgWithUserId;
    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    .line 278
    .restart local v3    # "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLooperPrepared(), msg: MSG_APP_RESUME, pkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v2, v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$mhandleResume(Lcom/samsung/android/game/FgCheckThread;Lcom/samsung/android/game/PkgWithUserId;)V

    .line 281
    nop

    .line 331
    .end local v0    # "resumedPkg":Lcom/samsung/android/game/PkgWithUserId;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v3    # "userId":I
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
