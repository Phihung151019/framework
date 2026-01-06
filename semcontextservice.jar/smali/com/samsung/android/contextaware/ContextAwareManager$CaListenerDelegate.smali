.class public Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
.super Ljava/lang/Object;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/ContextAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/ContextAwareManager;
    .param p2, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    iput-object p2, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 1070
    const/4 v0, 0x0

    .line 1076
    .local v0, "looper":Landroid/os/Looper;
    invoke-static {p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->-$$Nest$fgetmCaeMgrLooper(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1077
    invoke-static {p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->-$$Nest$fgetmMainLooper(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 1079
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->-$$Nest$fgetmCaeMgrLooper(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;

    move-result-object v0

    .line 1081
    :goto_0
    new-instance v1, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/contextaware/ContextAwareManager;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1091
    return-void
.end method


# virtual methods
.method public declared-synchronized caCallback(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1109
    if-nez p2, :cond_0

    .line 1110
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 1111
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    monitor-exit p0

    return-void

    .line 1114
    .end local p0    # "this":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1115
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1116
    invoke-virtual {p2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1117
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1118
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1119
    monitor-exit p0

    return-void

    .line 1108
    .end local v0    # "msg":Landroid/os/Message;
    .end local p1    # "type":I
    .end local p2    # "context":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getListener()Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    if-nez v0, :cond_0

    .line 1128
    const/4 v0, 0x0

    return-object v0

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-interface {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareListener;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
