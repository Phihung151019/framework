.class Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub;
.super Landroidx/car/app/messaging/model/IConversationCallback$Stub;
.source "ConversationCallbackDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationCallbackStub"
.end annotation


# instance fields
.field private final mConversationCallback:Landroidx/car/app/messaging/model/ConversationCallback;


# direct methods
.method constructor <init>(Landroidx/car/app/messaging/model/ConversationCallback;)V
    .locals 0
    .param p1, "conversationCallback"    # Landroidx/car/app/messaging/model/ConversationCallback;

    .line 90
    invoke-direct {p0}, Landroidx/car/app/messaging/model/IConversationCallback$Stub;-><init>()V

    .line 91
    iput-object p1, p0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub;->mConversationCallback:Landroidx/car/app/messaging/model/ConversationCallback;

    .line 92
    return-void
.end method


# virtual methods
.method synthetic lambda$onMarkAsRead$0$androidx-car-app-messaging-model-ConversationCallbackDelegateImpl$ConversationCallbackStub()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub;->mConversationCallback:Landroidx/car/app/messaging/model/ConversationCallback;

    invoke-interface {v0}, Landroidx/car/app/messaging/model/ConversationCallback;->onMarkAsRead()V

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onTextReply$1$androidx-car-app-messaging-model-ConversationCallbackDelegateImpl$ConversationCallbackStub(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "replyText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub;->mConversationCallback:Landroidx/car/app/messaging/model/ConversationCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/messaging/model/ConversationCallback;->onTextReply(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMarkAsRead(Landroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "onDoneCallback"    # Landroidx/car/app/IOnDoneCallback;

    .line 96
    new-instance v0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub;)V

    const-string v1, "onMarkAsRead"

    invoke-static {p1, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 103
    return-void
.end method

.method public onTextReply(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "onDoneCallback"    # Landroidx/car/app/IOnDoneCallback;
    .param p2, "replyText"    # Ljava/lang/String;

    .line 110
    new-instance v0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl$ConversationCallbackStub;Ljava/lang/String;)V

    const-string v1, "onReply"

    invoke-static {p1, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 117
    return-void
.end method
