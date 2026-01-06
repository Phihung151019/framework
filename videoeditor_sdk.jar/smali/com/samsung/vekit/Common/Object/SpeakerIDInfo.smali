.class public Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;
.super Ljava/lang/Object;
.source "SpeakerIDInfo.java"


# instance fields
.field private ID:Ljava/lang/String;

.field private data:[F

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x100

    iput v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    .line 13
    iget v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    .line 14
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>([FLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [F
    .param p2, "ID"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    array-length v0, p1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    .line 20
    iget v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    .line 21
    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;
    .locals 3

    .line 25
    new-instance v0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;-><init>([FLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->clone()Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;

    move-result-object v0

    return-object v0
.end method

.method public getData()[F
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSpeakerIDInfo([FLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [F
    .param p2, "ID"    # Ljava/lang/String;

    .line 29
    array-length v0, p1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    .line 30
    iget v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    .line 31
    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    .line 32
    return-void
.end method
