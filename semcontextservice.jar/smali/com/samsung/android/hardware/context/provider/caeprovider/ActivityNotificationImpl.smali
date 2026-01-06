.class public Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;
.super Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.source "ActivityNotificationImpl.java"


# static fields
.field private static final INIT_ACTION_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemContext.CaeProvider.ActivityNotificationImpl"


# instance fields
.field private mActionType:I

.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

.field private mIsActionListMade:Z

.field private final mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

.field private mMaxActionType:I

.field private mSavedEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 66
    const/16 v0, 0x1b

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/List;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mIsActionListMade:Z

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mActionType:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mMaxActionType:I

    .line 68
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->getManager()Lcom/samsung/android/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 69
    iput-object p2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 70
    return-void
.end method


# virtual methods
.method public addAction(I)V
    .locals 5
    .param p1, "action"    # I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mIsActionListMade:Z

    .line 81
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mMaxActionType:I

    if-gt v0, p1, :cond_0

    .line 82
    iput p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mMaxActionType:I

    .line 84
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mActionType:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 85
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->remove()V

    .line 86
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mActionType:I

    shl-int v2, v1, p1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mActionType:I

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mMaxActionType:I

    if-gt v0, v2, :cond_2

    .line 88
    iget v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mActionType:I

    shl-int v3, v1, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v3, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    const/16 v4, 0x25

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->add()V

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 99
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 100
    .local v1, "savedEvent":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    const/16 v3, 0x1b

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/hardware/context/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 101
    .end local v1    # "savedEvent":Landroid/os/Bundle;
    goto :goto_1

    .line 102
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/List;

    .line 104
    :cond_5
    return-void
.end method

.method public removeAction(I)V
    .locals 3
    .param p1, "action"    # I

    .line 112
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 116
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mActionType:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mActionType:I

    .line 117
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mActionType:I

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->remove()V

    .line 120
    :cond_0
    return-void
.end method

.method public saveEvent(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveEvent() : mIsActionListMade = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mIsActionListMade:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContext.CaeProvider.ActivityNotificationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mIsActionListMade:Z

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/List;

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getActivityNotificationContext()Lcom/samsung/android/hardware/context/SemContextActivityNotification;

    move-result-object v0

    .line 130
    .local v0, "noti":Lcom/samsung/android/hardware/context/SemContextActivityNotification;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v2, "context":Landroid/os/Bundle;
    const-string v3, "TimeStamp"

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 132
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->getStatus()I

    move-result v3

    const-string v4, "ActivityType"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string v3, "Accuracy"

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->getAccuracy()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveEvent() : add action = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "noti":Lcom/samsung/android/hardware/context/SemContextActivityNotification;
    .end local v2    # "context":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
