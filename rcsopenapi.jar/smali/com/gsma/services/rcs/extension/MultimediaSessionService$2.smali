.class Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;
.super Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;
.source "MultimediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/extension/MultimediaSessionService;->addEventListener(Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gsma/services/rcs/extension/MultimediaSessionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 304
    iput-object p2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V

    .line 316
    return-void
.end method

.method public onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V
    .locals 1
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    .locals 1
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    .line 310
    return-void
.end method
