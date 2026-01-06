.class public interface abstract Lcom/samsung/vekit/Interface/SpeakerIDInfoInterface;
.super Ljava/lang/Object;
.source "SpeakerIDInfoInterface.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addSpeakerIDInfo(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;)V
.end method

.method public abstract clearSpeakerIDInfo()V
.end method

.method public abstract getSpeakerIDInfo(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;
.end method

.method public abstract getSpeakerIDInfoMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpeakerIDInfoMapSize()I
.end method

.method public abstract removeSpeakerIDInfo(Ljava/lang/String;)V
.end method

.method public abstract setSpeakerIDInfoMap(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;",
            ">;)V"
        }
    .end annotation
.end method
