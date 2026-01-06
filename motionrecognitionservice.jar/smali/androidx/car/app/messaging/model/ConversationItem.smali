.class public Landroidx/car/app/messaging/model/ConversationItem;
.super Ljava/lang/Object;
.source "ConversationItem.java"

# interfaces
.implements Landroidx/car/app/model/Item;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x7
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/messaging/model/ConversationItem$Builder;
    }
.end annotation


# instance fields
.field private final mConversationCallbackDelegate:Landroidx/car/app/messaging/model/ConversationCallbackDelegate;

.field private final mIcon:Landroidx/car/app/model/CarIcon;

.field private final mId:Ljava/lang/String;

.field private final mIsGroupConversation:Z

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/messaging/model/CarMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelf:Landroid/os/Bundle;

.field private final mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mId:Ljava/lang/String;

    .line 110
    new-instance v1, Landroidx/car/app/model/CarText$Builder;

    invoke-direct {v1, v0}, Landroidx/car/app/model/CarText$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroidx/car/app/model/CarText$Builder;->build()Landroidx/car/app/model/CarText;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/messaging/model/ConversationItem;->mTitle:Landroidx/car/app/model/CarText;

    .line 111
    new-instance v1, Landroidx/core/app/Person$Builder;

    invoke-direct {v1}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mSelf:Landroid/os/Bundle;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mIsGroupConversation:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mMessages:Ljava/util/List;

    .line 115
    new-instance v0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl;

    new-instance v1, Landroidx/car/app/messaging/model/ConversationItem$1;

    invoke-direct {v1, p0}, Landroidx/car/app/messaging/model/ConversationItem$1;-><init>(Landroidx/car/app/messaging/model/ConversationItem;)V

    invoke-direct {v0, v1}, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl;-><init>(Landroidx/car/app/messaging/model/ConversationCallback;)V

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mConversationCallbackDelegate:Landroidx/car/app/messaging/model/ConversationCallbackDelegate;

    .line 127
    return-void
.end method

.method constructor <init>(Landroidx/car/app/messaging/model/ConversationItem$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroidx/car/app/messaging/model/ConversationItem$Builder;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iget-object v0, p1, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mId:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mTitle:Landroidx/car/app/model/CarText;

    .line 98
    iget-object v0, p1, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mSelf:Landroidx/core/app/Person;

    invoke-static {v0}, Landroidx/car/app/messaging/model/ConversationItem;->validateSender(Landroidx/core/app/Person;)Landroidx/core/app/Person;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mSelf:Landroid/os/Bundle;

    .line 99
    iget-object v0, p1, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 100
    iget-boolean v0, p1, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mIsGroupConversation:Z

    iput-boolean v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mIsGroupConversation:Z

    .line 101
    iget-object v0, p1, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mMessages:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mMessages:Ljava/util/List;

    .line 102
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Message list cannot be empty."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 103
    new-instance v0, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl;

    iget-object v1, p1, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mConversationCallback:Landroidx/car/app/messaging/model/ConversationCallback;

    .line 104
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/messaging/model/ConversationCallback;

    invoke-direct {v0, v1}, Landroidx/car/app/messaging/model/ConversationCallbackDelegateImpl;-><init>(Landroidx/car/app/messaging/model/ConversationCallback;)V

    iput-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mConversationCallbackDelegate:Landroidx/car/app/messaging/model/ConversationCallbackDelegate;

    .line 105
    return-void
.end method

.method static validateSender(Landroidx/core/app/Person;)Landroidx/core/app/Person;
    .locals 1
    .param p0, "person"    # Landroidx/core/app/Person;

    .line 185
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {p0}, Landroidx/core/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Landroidx/car/app/messaging/model/ConversationItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 80
    return v2

    .line 82
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/messaging/model/ConversationItem;

    .line 84
    .local v1, "otherConversationItem":Landroidx/car/app/messaging/model/ConversationItem;
    iget-object v3, p0, Landroidx/car/app/messaging/model/ConversationItem;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroidx/car/app/messaging/model/ConversationItem;->mId:Ljava/lang/String;

    .line 85
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/messaging/model/ConversationItem;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/messaging/model/ConversationItem;->mTitle:Landroidx/car/app/model/CarText;

    .line 86
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/messaging/model/ConversationItem;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/messaging/model/ConversationItem;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 87
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {p0}, Landroidx/car/app/messaging/model/ConversationItem;->getSelf()Landroidx/core/app/Person;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/car/app/messaging/model/ConversationItem;->getSelf()Landroidx/core/app/Person;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/car/app/messaging/model/PersonsEqualityHelper;->arePersonsEqual(Landroidx/core/app/Person;Landroidx/core/app/Person;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/car/app/messaging/model/ConversationItem;->mIsGroupConversation:Z

    iget-boolean v4, v1, Landroidx/car/app/messaging/model/ConversationItem;->mIsGroupConversation:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/messaging/model/ConversationItem;->mMessages:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/messaging/model/ConversationItem;->mMessages:Ljava/util/List;

    .line 91
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 84
    :goto_0
    return v0
.end method

.method public getConversationCallbackDelegate()Landroidx/car/app/messaging/model/ConversationCallbackDelegate;
    .locals 1

    .line 175
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mConversationCallbackDelegate:Landroidx/car/app/messaging/model/ConversationCallbackDelegate;

    return-object v0
.end method

.method public getIcon()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mIcon:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/messaging/model/CarMessage;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public getSelf()Landroidx/core/app/Person;
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mSelf:Landroid/os/Bundle;

    invoke-static {v0}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 64
    nop

    .line 65
    invoke-virtual {p0}, Landroidx/car/app/messaging/model/ConversationItem;->getSelf()Landroidx/core/app/Person;

    move-result-object v0

    invoke-static {v0}, Landroidx/car/app/messaging/model/PersonsEqualityHelper;->getPersonHashCode(Landroidx/core/app/Person;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/messaging/model/ConversationItem;->mId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/car/app/messaging/model/ConversationItem;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, p0, Landroidx/car/app/messaging/model/ConversationItem;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-boolean v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mIsGroupConversation:Z

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Landroidx/car/app/messaging/model/ConversationItem;->mMessages:Ljava/util/List;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isGroupConversation()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Landroidx/car/app/messaging/model/ConversationItem;->mIsGroupConversation:Z

    return v0
.end method
