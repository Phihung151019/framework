.class public final Landroidx/car/app/messaging/model/ConversationItem$Builder;
.super Ljava/lang/Object;
.source "ConversationItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/messaging/model/ConversationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mConversationCallback:Landroidx/car/app/messaging/model/ConversationCallback;

.field mIcon:Landroidx/car/app/model/CarIcon;

.field mId:Ljava/lang/String;

.field mIsGroupConversation:Z

.field mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/messaging/model/CarMessage;",
            ">;"
        }
    .end annotation
.end field

.field mSelf:Landroidx/core/app/Person;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/messaging/model/ConversationItem;
    .locals 1

    .line 285
    new-instance v0, Landroidx/car/app/messaging/model/ConversationItem;

    invoke-direct {v0, p0}, Landroidx/car/app/messaging/model/ConversationItem;-><init>(Landroidx/car/app/messaging/model/ConversationItem$Builder;)V

    return-object v0
.end method

.method public setConversationCallback(Landroidx/car/app/messaging/model/ConversationCallback;)Landroidx/car/app/messaging/model/ConversationItem$Builder;
    .locals 0
    .param p1, "conversationCallback"    # Landroidx/car/app/messaging/model/ConversationCallback;

    .line 278
    iput-object p1, p0, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mConversationCallback:Landroidx/car/app/messaging/model/ConversationCallback;

    .line 279
    return-object p0
.end method

.method public setGroupConversation(Z)Landroidx/car/app/messaging/model/ConversationItem$Builder;
    .locals 0
    .param p1, "isGroupConversation"    # Z

    .line 262
    iput-boolean p1, p0, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mIsGroupConversation:Z

    .line 263
    return-object p0
.end method

.method public setIcon(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/messaging/model/ConversationItem$Builder;
    .locals 0
    .param p1, "icon"    # Landroidx/car/app/model/CarIcon;

    .line 233
    iput-object p1, p0, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 234
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroidx/car/app/messaging/model/ConversationItem$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 219
    iput-object p1, p0, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mId:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public setMessages(Ljava/util/List;)Landroidx/car/app/messaging/model/ConversationItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/messaging/model/CarMessage;",
            ">;)",
            "Landroidx/car/app/messaging/model/ConversationItem$Builder;"
        }
    .end annotation

    .line 269
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/messaging/model/CarMessage;>;"
    iput-object p1, p0, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mMessages:Ljava/util/List;

    .line 270
    return-object p0
.end method

.method public setSelf(Landroidx/core/app/Person;)Landroidx/car/app/messaging/model/ConversationItem$Builder;
    .locals 0
    .param p1, "self"    # Landroidx/core/app/Person;

    .line 246
    iput-object p1, p0, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mSelf:Landroidx/core/app/Person;

    .line 247
    return-object p0
.end method

.method public setTitle(Landroidx/car/app/model/CarText;)Landroidx/car/app/messaging/model/ConversationItem$Builder;
    .locals 0
    .param p1, "title"    # Landroidx/car/app/model/CarText;

    .line 226
    iput-object p1, p0, Landroidx/car/app/messaging/model/ConversationItem$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 227
    return-object p0
.end method
