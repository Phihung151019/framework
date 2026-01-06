.class public interface abstract Lcom/samsung/android/server/uwb/bigdata/db/IUwbDbReader;
.super Ljava/lang/Object;
.source "IUwbDbReader.java"


# virtual methods
.method public abstract getAllUwbStateData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllUwbUsageData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;",
            ">;"
        }
    .end annotation
.end method
