.class Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl;
.super Ljava/lang/Object;
.source "ConversationCallbackDelegateImpl.java"

# interfaces
.implements Landroidx/car/app/messaging/model/ConversationCallbackDelegate;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x7
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub;
    }
.end annotation


# instance fields
.field private final mConversationCallbackBinder:Landroidx/car/app/messaging/model/IConversationCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl;->mConversationCallbackBinder:Landroidx/car/app/messaging/model/IConversationCallback;

    .line 60
    return-void
.end method

.method constructor <init>(Landroidx/car/app/messaging/model/ConversationCallback;)V
    .locals 1
    .param p1, "conversationCallback"    # Landroidx/car/app/messaging/model/ConversationCallback;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub;

    invoke-direct {v0, p1}, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub;-><init>(Landroidx/car/app/messaging/model/ConversationCallback;)V

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl;->mConversationCallbackBinder:Landroidx/car/app/messaging/model/IConversationCallback;

    .line 55
    return-void
.end method


# virtual methods
.method public sendMarkAsRead(Landroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "onDoneCallback"    # Landroidx/car/app/OnDoneCallback;

    .line 65
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl;->mConversationCallbackBinder:Landroidx/car/app/messaging/model/IConversationCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/messaging/model/IConversationCallback;

    .line 66
    invoke-static {p1}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/car/app/messaging/model/IConversationCallback;->onMarkAsRead(Landroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .line 70
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendTextReply(Ljava/lang/String;Landroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "replyText"    # Ljava/lang/String;
    .param p2, "onDoneCallback"    # Landroidx/car/app/OnDoneCallback;

    .line 75
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl;->mConversationCallbackBinder:Landroidx/car/app/messaging/model/IConversationCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/messaging/model/IConversationCallback;

    .line 76
    invoke-static {p2}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    .line 75
    invoke-interface {v0, v1, p1}, Landroidx/car/app/messaging/model/IConversationCallback;->onTextReply(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
