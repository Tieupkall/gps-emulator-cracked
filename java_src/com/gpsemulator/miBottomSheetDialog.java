package com.rosteam.gpsemulator;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class miBottomSheetDialog extends BottomSheetDialogFragment {
    View mBanner;

    public miBottomSheetDialog() {
    }

    public miBottomSheetDialog(View view) {
        Log.e("miBottomSheetDialog", "llega banner " + view.toString());
        this.mBanner = view;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.rosteam.gpsemulator.miBottomSheetDialog.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialogInterface;
                BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(bottomSheetDialog.findViewById(com.google.android.material.R.id.design_bottom_sheet));
                bottomSheetBehaviorFrom.setPeekHeight(Resources.getSystem().getDisplayMetrics().heightPixels);
                bottomSheetBehaviorFrom.setState(4);
                bottomSheetDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.rosteam.gpsemulator.miBottomSheetDialog.1.1
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface2, int i, KeyEvent keyEvent) {
                        if (i != 4) {
                            return false;
                        }
                        dialogInterface2.cancel();
                        miBottomSheetDialog.this.getActivity().finish();
                        return true;
                    }
                });
            }
        });
        dialogOnCreateDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.rosteam.gpsemulator.miBottomSheetDialog.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
            }
        });
        return dialogOnCreateDialog;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.bottom_sheet_dialog, viewGroup, false);
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.exitbannercontainer);
        if (this.mBanner.getParent() != null) {
            ((ViewGroup) this.mBanner.getParent()).removeView(this.mBanner);
        }
        relativeLayout.addView(this.mBanner);
        viewInflate.findViewById(R.id.button_no).setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.miBottomSheetDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                miBottomSheetDialog.this.dismiss();
            }
        });
        viewInflate.findViewById(R.id.button_yes).setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.miBottomSheetDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                miBottomSheetDialog.this.getActivity().finish();
            }
        });
        viewInflate.findViewById(R.id.exitText).setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.miBottomSheetDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                miBottomSheetDialog.this.getActivity().finish();
            }
        });
        return viewInflate;
    }

    public void onDestroyView() {
        super.onDestroyView();
    }
}
