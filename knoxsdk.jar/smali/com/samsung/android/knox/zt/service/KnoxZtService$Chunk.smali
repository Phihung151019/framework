.class public Lcom/samsung/android/knox/zt/service/KnoxZtService$Chunk;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/service/KnoxZtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chunk"
.end annotation


# instance fields
.field public blacklist data:Ljava/lang/String;

.field public blacklist sequenceNumber:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$Chunk;->sequenceNumber:I

    iput-object p2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$Chunk;->data:Ljava/lang/String;

    return-void
.end method
