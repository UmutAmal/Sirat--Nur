package com.umutamal.sirat_i_nur;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.widget.RemoteViews;
import es.antonborri.home_widget.HomeWidgetProvider;

public class AllPrayersWidgetProvider extends HomeWidgetProvider {

    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds, SharedPreferences widgetData) {
        for (int appWidgetId : appWidgetIds) {
            
            RemoteViews views = new RemoteViews(context.getPackageName(), R.layout.widget_all_prayers);

            String header = widgetData.getString("all_prayers_header", "");
            String fajrLabel = widgetData.getString("fajr_label", "");
            String dhuhrLabel = widgetData.getString("dhuhr_label", "");
            String asrLabel = widgetData.getString("asr_label", "");
            String maghribLabel = widgetData.getString("maghrib_label", "");
            String ishaLabel = widgetData.getString("isha_label", "");
            String fajrTime = widgetData.getString("fajr", "--:--");
            String dhuhrTime = widgetData.getString("dhuhr", "--:--");
            String asrTime = widgetData.getString("asr", "--:--");
            String maghribTime = widgetData.getString("maghrib", "--:--");
            String ishaTime = widgetData.getString("isha", "--:--");

            views.setTextViewText(R.id.tv_all_prayers_header, header);
            views.setTextViewText(R.id.tv_fajr_label, fajrLabel);
            views.setTextViewText(R.id.tv_dhuhr_label, dhuhrLabel);
            views.setTextViewText(R.id.tv_asr_label, asrLabel);
            views.setTextViewText(R.id.tv_maghrib_label, maghribLabel);
            views.setTextViewText(R.id.tv_isha_label, ishaLabel);
            views.setTextViewText(R.id.tv_fajr, fajrTime);
            views.setTextViewText(R.id.tv_dhuhr, dhuhrTime);
            views.setTextViewText(R.id.tv_asr, asrTime);
            views.setTextViewText(R.id.tv_maghrib, maghribTime);
            views.setTextViewText(R.id.tv_isha, ishaTime);

            appWidgetManager.updateAppWidget(appWidgetId, views);
        }
    }
}
