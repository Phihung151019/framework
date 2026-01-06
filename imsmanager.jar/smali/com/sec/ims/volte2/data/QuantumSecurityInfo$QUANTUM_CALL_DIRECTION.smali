.class public Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_CALL_DIRECTION;
.super Ljava/lang/Object;
.source "QuantumSecurityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/QuantumSecurityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QUANTUM_CALL_DIRECTION"
.end annotation


# static fields
.field public static final CALL_DIR_CALLEE:I = 0x1

.field public static final CALL_DIR_CALLER:I = 0x0

.field public static final CALL_DIR_INVALID:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
