.class public Lcom/samsung/vekit/Content/Audio;
.super Lcom/samsung/vekit/Content/Content;
.source "Audio.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/AudioSegmentInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Content/Content;",
        "Lcom/samsung/vekit/Interface/AudioSegmentInterface<",
        "Lcom/samsung/vekit/Content/Audio;",
        ">;"
    }
.end annotation


# instance fields
.field private audioSegmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation
.end field

.field private filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->AUDIO:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    .line 18
    return-void
.end method


# virtual methods
.method public addAudioSegment(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "audioSegment"    # Lcom/samsung/vekit/Common/Object/AudioSegment;

    .line 52
    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public clearAudioSegment()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    return-void
.end method

.method public getAudioSegment(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/AudioSegment;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/AudioSegment;

    return-object v0
.end method

.method public getAudioSegmentMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAudioSegmentMapSize()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public removeAudioSegment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public setAudioSegmentMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "audioSegmentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public setDuration(J)Lcom/samsung/vekit/Content/Audio;
    .locals 1
    .param p1, "duration"    # J

    .line 32
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Content/Content;->setDuration(J)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Audio;

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Content/Content;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Content/Audio;->setDuration(J)Lcom/samsung/vekit/Content/Audio;

    move-result-object p1

    return-object p1
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/samsung/vekit/Content/Audio;
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/samsung/vekit/Content/Audio;->filePath:Ljava/lang/String;

    .line 23
    return-object p0
.end method
