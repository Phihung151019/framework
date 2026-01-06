.class public Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;
.super Lcom/sec/vsim/ericssonnsds/data/OAuthResponse;
.source "MSISDNLoginResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errorCode:Ljava/lang/String;

.field public errorDescription:Ljava/lang/String;

.field public statusCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 11
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/OAuthResponse;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->statusCode:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->errorCode:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->errorDescription:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 24
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->errorDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    return-void
.end method
