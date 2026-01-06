.class final Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$SingletonHolder;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$SingletonHolder;->INSTANCE:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$SingletonHolder;->INSTANCE:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 2
    .line 3
    return-object v0
.end method
