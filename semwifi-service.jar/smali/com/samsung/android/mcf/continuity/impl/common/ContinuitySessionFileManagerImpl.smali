.class public final Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->unregisterFileInfoListener()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
