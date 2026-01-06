.class public Lcom/sec/ims/presence/PresenceInfo$Builder;
.super Ljava/lang/Object;
.source "PresenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/PresenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field expire_time:J

.field phoneId:I

.field pidf:Ljava/lang/String;

.field tel_uri:Ljava/lang/String;

.field timestamp:J

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/ims/presence/PresenceInfo;
    .locals 1

    .line 358
    new-instance v0, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v0, p0}, Lcom/sec/ims/presence/PresenceInfo;-><init>(Lcom/sec/ims/presence/PresenceInfo$Builder;)V

    return-object v0
.end method

.method public expire_time(J)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    .line 343
    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->expire_time:J

    return-object p0
.end method

.method public phoneId(I)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    .line 353
    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->phoneId:I

    return-object p0
.end method

.method public pidf(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->pidf:Ljava/lang/String;

    return-object p0
.end method

.method public tel_uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->tel_uri:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp(J)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    .line 338
    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->timestamp:J

    return-object p0
.end method

.method public uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->uri:Ljava/lang/String;

    return-object p0
.end method
