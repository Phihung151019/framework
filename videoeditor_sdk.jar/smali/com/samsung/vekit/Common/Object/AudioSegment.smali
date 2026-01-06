.class public Lcom/samsung/vekit/Common/Object/AudioSegment;
.super Ljava/lang/Object;
.source "AudioSegment.java"


# instance fields
.field private enable:Z

.field private key:Ljava/lang/String;

.field private regionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/AudioRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    .line 13
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->key:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/AudioRegion;",
            ">;)V"
        }
    .end annotation

    .line 16
    .local p2, "regionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/AudioRegion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->key:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public addRegion(Lcom/samsung/vekit/Common/Object/AudioRegion;)V
    .locals 1
    .param p1, "region"    # Lcom/samsung/vekit/Common/Object/AudioRegion;

    .line 52
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public clearRegion()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    return-void
.end method

.method public clone()Lcom/samsung/vekit/Common/Object/AudioSegment;
    .locals 4

    .line 22
    new-instance v0, Lcom/samsung/vekit/Common/Object/AudioSegment;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/AudioSegment;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "clonedAudioSegment":Lcom/samsung/vekit/Common/Object/AudioSegment;
    iget-boolean v1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    iput-boolean v1, v0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    .line 24
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Common/Object/AudioRegion;

    .line 25
    .local v2, "region":Lcom/samsung/vekit/Common/Object/AudioRegion;
    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/AudioRegion;->clone()Lcom/samsung/vekit/Common/Object/AudioRegion;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/vekit/Common/Object/AudioSegment;->addRegion(Lcom/samsung/vekit/Common/Object/AudioRegion;)V

    .line 26
    .end local v2    # "region":Lcom/samsung/vekit/Common/Object/AudioRegion;
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/AudioSegment;->clone()Lcom/samsung/vekit/Common/Object/AudioSegment;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion(I)Lcom/samsung/vekit/Common/Object/AudioRegion;
    .locals 3
    .param p1, "index"    # I

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/AudioRegion;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "exception":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "AudioSegment"

    const-string v2, "invalid index."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRegionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/AudioRegion;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRegionListSize()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    return v0
.end method

.method public removeRegion(Lcom/samsung/vekit/Common/Object/AudioRegion;)V
    .locals 1
    .param p1, "region"    # Lcom/samsung/vekit/Common/Object/AudioRegion;

    .line 56
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    .line 69
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->key:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setRegionList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/AudioRegion;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "regionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/AudioRegion;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method
