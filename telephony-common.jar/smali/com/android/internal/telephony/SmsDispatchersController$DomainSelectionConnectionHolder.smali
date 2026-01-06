.class public Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;
.super Ljava/lang/Object;
.source "SmsDispatchersController.java"

# interfaces
.implements Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DomainSelectionConnectionHolder"
.end annotation


# instance fields
.field private blacklist mConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

.field private final blacklist mEmergency:Z

.field private final blacklist mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsDispatchersController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsDispatchersController;Z)V
    .locals 0
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

    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mPendingRequests:Ljava/util/List;

    .line 380
    iput-boolean p2, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mEmergency:Z

    return-void
.end method


# virtual methods
.method public blacklist addRequest(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist clearAllRequests()V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public blacklist getConnection()Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    return-object p0
.end method

.method public blacklist getPendingRequests()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mPendingRequests:Ljava/util/List;

    return-object p0
.end method

.method public blacklist isDomainSelectionRequested()Z
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist isEmergency()Z
    .locals 0

    .line 411
    iget-boolean p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mEmergency:Z

    return p0
.end method

.method public blacklist onSelectionTerminated(I)V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectionTerminated: emergency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mEmergency:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$mlogd(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    const/16 v0, 0x14

    .line 442
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 441
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist setConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    return-void
.end method
