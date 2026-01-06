.class public interface abstract Lcom/samsung/android/game/data/PackageDataRepository$PackageDataRepositoryInterface;
.super Ljava/lang/Object;
.source "PackageDataRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/data/PackageDataRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageDataRepositoryInterface"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract contains(Ljava/lang/String;I)Z
.end method

.method public abstract getPkgNameUserIdsSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Ljava/lang/String;I)V
.end method

.method public abstract removeFromAllUserIds(Ljava/lang/String;)V
.end method
