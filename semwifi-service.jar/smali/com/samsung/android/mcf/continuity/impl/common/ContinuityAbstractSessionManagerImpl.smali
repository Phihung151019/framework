.class public Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractSessionManagerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field protected final mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;

.field private final mContinuitySessionFileManagerImpl:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;

.field private final mContinuitySessionMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionMessageManagerImpl;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionMessageManagerImpl;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractSessionManagerImpl;->mContinuitySessionMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionMessageManagerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractSessionManagerImpl;->mContinuitySessionFileManagerImpl:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractSessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractSessionManagerImpl;->mContinuitySessionFileManagerImpl:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;->destroy()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractSessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->destroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
