.class public Lcom/samsung/android/mcf/common/MessageUtil;
.super Ljava/lang/Object;
.source "MessageUtil.java"


# static fields
.field static final CALLING_PID:Ljava/lang/String; = "CALLING_PID"

.field static final CALLING_UID:Ljava/lang/String; = "CALLING_UID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallerInfo(Landroid/os/Message;II)V
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 39
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "CALLING_PID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v1, "CALLING_UID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public static getCallingPid(Landroid/os/Message;)I
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .line 45
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "CALLING_PID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getCallingUid(Landroid/os/Message;)I
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .line 50
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "CALLING_UID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static makeMessage(IIILandroid/os/Bundle;)Landroid/os/Message;
    .locals 4
    .param p0, "appId"    # I
    .param p1, "what"    # I
    .param p2, "arg2"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 21
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 22
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 23
    const/16 v1, -0x3e7

    if-eq p2, v1, :cond_0

    .line 24
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 27
    :cond_0
    move-object v1, p3

    .line 28
    .local v1, "obj":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 29
    invoke-static {}, Lcom/samsung/android/mcf/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 32
    :cond_1
    const-string v2, "verCode"

    const v3, 0x13f192

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    return-object v0
.end method
