.class public abstract Lcom/samsung/uwb/support/data/ranging/Measurement;
.super Ljava/lang/Object;
.source "Measurement.java"


# instance fields
.field public mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/samsung/uwb/support/data/code/StatusCode;

    invoke-direct {v0}, Lcom/samsung/uwb/support/data/code/StatusCode;-><init>()V

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/Measurement;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    return-void
.end method


# virtual methods
.method public abstract getMacAddress()[B
.end method

.method public abstract getStatus()B
.end method

.method public abstract toString()Ljava/lang/String;
.end method
