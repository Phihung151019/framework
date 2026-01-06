.class public final Landroidx/car/app/messaging/model/CarMessage$Builder;
.super Ljava/lang/Object;
.source "CarMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/messaging/model/CarMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mBody:Landroidx/car/app/model/CarText;

.field mIsRead:Z

.field mReceivedTimeEpochMillis:J

.field mSender:Landroidx/core/app/Person;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/messaging/model/CarMessage;
    .locals 1

    .line 160
    new-instance v0, Landroidx/car/app/messaging/model/CarMessage;

    invoke-direct {v0, p0}, Landroidx/car/app/messaging/model/CarMessage;-><init>(Landroidx/car/app/messaging/model/CarMessage$Builder;)V

    return-object v0
.end method

.method public setBody(Landroidx/car/app/model/CarText;)Landroidx/car/app/messaging/model/CarMessage$Builder;
    .locals 0
    .param p1, "body"    # Landroidx/car/app/model/CarText;

    .line 142
    iput-object p1, p0, Landroidx/car/app/messaging/model/CarMessage$Builder;->mBody:Landroidx/car/app/model/CarText;

    .line 143
    return-object p0
.end method

.method public setRead(Z)Landroidx/car/app/messaging/model/CarMessage$Builder;
    .locals 0
    .param p1, "isRead"    # Z

    .line 154
    iput-boolean p1, p0, Landroidx/car/app/messaging/model/CarMessage$Builder;->mIsRead:Z

    .line 155
    return-object p0
.end method

.method public setReceivedTimeEpochMillis(J)Landroidx/car/app/messaging/model/CarMessage$Builder;
    .locals 0
    .param p1, "receivedTimeEpochMillis"    # J

    .line 148
    iput-wide p1, p0, Landroidx/car/app/messaging/model/CarMessage$Builder;->mReceivedTimeEpochMillis:J

    .line 149
    return-object p0
.end method

.method public setSender(Landroidx/core/app/Person;)Landroidx/car/app/messaging/model/CarMessage$Builder;
    .locals 0
    .param p1, "sender"    # Landroidx/core/app/Person;

    .line 136
    iput-object p1, p0, Landroidx/car/app/messaging/model/CarMessage$Builder;->mSender:Landroidx/core/app/Person;

    .line 137
    return-object p0
.end method
